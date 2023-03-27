const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.sendFile(__dirname + '/index.html');
});

app.get('/api/hello', (req, res) => {
  res.send('Nodejs app');
});

app.listen(port, () => {
    console.log(`App listening at http://localhost:${port}`);
  });
  
