FROM node:20-alpine
WORKDIR /app
RUN apk upgrade --no-cache
COPY package.json package-lock.json* ./
RUN npm install --omit=dev && \
    rm -rf /usr/local/lib/node_modules/npm /usr/local/bin/npm /usr/local/bin/npx
COPY . .
EXPOSE 3000
CMD ["node", "index.js"]
