const http = require('http');

const hostname = '127.0.0.1';
const port = 8081;

const message = '<html><body><h1>Hello Parents !!!</h1></body></html>';

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/html');
  res.end(`${message}\n`);
});

server.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});
