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
('room-1', 'Sala impresjonistów'),
('room-2', 'Sala sztuki współczesnej');

INSERT INTO artworks (room_id, title, description, image_path) VALUES
(1, 'Impresja, wschód słońca', 'Claude Monet, 1872', 'monet1.png'),
(1, 'Lilie wodne', 'Claude Monet, 1906', 'monet2.png'),
(2, 'Kompozycja VIII', 'Wassily Kandinsky, 1923', 'kandinsky.png');