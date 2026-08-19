const http = require('http');

const port = process.env.PORT || 3000;
validateCheckoutConfig();

const server = http.createServer((req, res) => {
  if (req.url === '/healthz') {
    res.writeHead(200, { 'Content-Type': 'application/json' });
    res.end(JSON.stringify({ status: 'ok' }));
    return;
  }
  res.writeHead(200, { 'Content-Type': 'text/plain' });
  res.end("Hello from checkout-api\\n");
});

server.listen(port, () => {
  console.log("checkout-api listening on port ${port}");
});
