
CREATE TABLE IF NOT EXISTS inspirational_quotes (
    id SERIAL PRIMARY KEY,
    quote VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE IF NOT EXISTS music(
    id_music SERIAL PRIMARY KEY,
    music_name VARCHAR(255),
    music_link VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE IF NOT EXISTS quote_music(
    id_quote INT,
    id_music INT,
   CONSTRAINT FK_music 
   FOREIGN KEY(id_music)
       REFERENCES music(id_music),
    CONSTRAINT FK_inspirational_quotes
    FOREIGN KEY(id_quote)
       REFERENCES inspirational_quotes(id)
);
