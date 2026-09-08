FROM node:20-alpine
WORKDIR /app
# Explicit floor on libssl3/libcrypto3, not just `apk upgrade --no-cache`: kaniko builds
# this image with --cache=true --cache-ttl=336h (platform-cicd's build-image Task), which
# caches a RUN layer by its command text + base digest, not by what's currently newest in
# the apk repo - an unpinned `apk upgrade` can keep serving a pre-fix layer from cache
# for up to 14 days after the fix lands upstream. Pinning the fixed versions here changes
# the layer's cache key, forcing a real re-fetch (fixes CVE-2026-14456, HIGH).
RUN apk upgrade --no-cache && \
    apk add --no-cache --upgrade "libssl3>=3.5.8-r0" "libcrypto3>=3.5.8-r0"
COPY package.json package-lock.json* ./
RUN npm install && \
    rm -rf /usr/local/lib/node_modules/npm /usr/local/bin/npm /usr/local/bin/npx
COPY . .
EXPOSE 3000
CMD ["node", "index.js"]
