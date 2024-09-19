const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('Its Saba ...hehehehhe');
});

module.exports = app;
