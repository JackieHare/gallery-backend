const express = require('express');
const router = express.Router();
const db = require('../db');

// GET obrazy z danego pokoju
router.get('/:roomId', async (req, res) => {
  const roomId = req.params.roomId;
  const query = 'SELECT * FROM artworks WHERE room_id = ?';

  db.query(query, [roomId], (err, results) => {
    if (err) {
      return res.status(500).json({ error: 'Błąd zapytania SQL' });
    }
    res.json(results);
  });
});

module.exports = router;