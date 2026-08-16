# nodejs-demo-app

nodejs-demo-app - a Node.js application

Scaffolded by `NodeJSApplication` (idp-service-catalog). Node 20,
npm.

```
npm install
npm start
```

**CICD pipeline onboarding**: this app's `NodeJSApplication` resource carries a
`CicdOnboarded` condition tracking whether `platform-cicd`'s tenant-onboarding
ApplicationSet has picked up this app's committed tenant identity yet. See the
resource's own status for details.
