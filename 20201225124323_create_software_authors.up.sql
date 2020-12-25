CREATE TABLE IF NOT EXISTS software_authors(
    id  INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    software_id  INT UNSIGNED NOT NULL,
    author_id  INT UNSIGNED NOT NULL,
    creator_id INT UNSIGNED,
    create_data DATETIME NOT NULL DEFAULT NOW(),
    modifer_id INT UNSIGNED,
    modify_data DATETIME DEFAULT NULL ON UPDATE NOW(),

    FOREIGN KEY (software_id) REFERENCES softwares (id)
        ON DELETE CASCADE,
    
    FOREIGN KEY (author_id) REFERENCES authors (id)
        ON DELETE CASCADE,

    FOREIGN KEY (creator_id) REFERENCES accounts (id)
        ON DELETE SET NULL,

    FOREIGN KEY (modifer_id) REFERENCES accounts (id)
        ON DELETE SET NULL
);