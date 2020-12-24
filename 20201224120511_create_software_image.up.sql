CREATE TABLE IF NOT EXISTS software_image(
    id  INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    software_id  INT UNSIGNED NOT NULL,
    basic64 TEXT NOT NULL,
    format TEXT NOT NULL,
    hash TEXT NOT NULL,
    creator_id INT UNSIGNED,
    create_data DATETIME NOT NULL DEFAULT NOW(),
    modifer_id INT UNSIGNED,
    modify_data DATETIME DEFAULT NULL ON UPDATE NOW(),

    FOREIGN KEY (software_id) REFERENCES softwares (id)
        ON DELETE CASCADE,

    FOREIGN KEY (creator_id) REFERENCES accounts (id)
        ON DELETE SET NULL,

    FOREIGN KEY (modifer_id) REFERENCES accounts (id)
        ON DELETE SET NULL
);