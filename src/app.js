const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('Ashi Singh');
});

module.exports = app;
