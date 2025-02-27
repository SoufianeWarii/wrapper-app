const express = require('express');
const path = require('path');
const app = express();
const port = process.env.PORT || 3001;

app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, 'index.html'));
});

app.listen(port, () => {
  console.log(`Server listening on port ${port}`);
});