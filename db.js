const mysql = require('mysql');

const db = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'gallery_db'
});

db.connect(err => {
  if (err) {
    console.error('Błąd połączenia z bazą:', err);
    return;
  }
  console.log('Połączono z bazą danych!');
});

module.exports = db;