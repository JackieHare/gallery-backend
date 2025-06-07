const express = require('express');
const cors = require('cors');
const bodyParser = require('body-parser');
const artworksRoute = require('./routes/artworks');

const app = express();
app.use(cors());
app.use(bodyParser.json());
app.use('/uploads', express.static('uploads'));
app.use('/api/artworks', artworksRoute);

app.listen(3001, () => {
  console.log('Serwer działa na porcie 3001');
});