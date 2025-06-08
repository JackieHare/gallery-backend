CREATE DATABASE IF NOT EXISTS gallery_db;
USE gallery_db;

-- Tabela pokoi
CREATE TABLE IF NOT EXISTS rooms (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT
);

-- Tabela dzieł sztuki
CREATE TABLE IF NOT EXISTS artworks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    room_id INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    image_path VARCHAR(255),
    FOREIGN KEY (room_id) REFERENCES rooms(id) ON DELETE CASCADE
);

-- Przykładowe dane
INSERT INTO rooms (name, description) VALUES
('hall-1', 'Sala impresjonistów'),
('hall-2', 'Sala sztuki współczesnej');

INSERT INTO artworks (room_id, title, description, image_path) VALUES
(1, 'Bawół', 'Madzia R, 2021', 'bawol.jpg'),
(1, 'Biurko Myśliciela', 'Madzia R, 2021', 'czaszka.jpg'),
(2, 'Groszek', 'Madzia R, 2021', 'piesg.jpg'),
;