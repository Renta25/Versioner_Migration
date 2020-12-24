CREATE TABLE IF NOT EXISTS versions(
    id  INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    software_id  INT UNSIGNED NOT NULL,
    name TEXT NOT NULL,
    build INT UNSIGNED NOT NULL,
    hash TEXT NOT NULL,
    size INT NOT NULL,
    public BOOLEAN NOT NULL DEFAULT FALSE,
    public_data DATETIME NOT NULL DEFAULT NOW(),
    recall BOOLEAN NOT NULL DEFAULT FALSE,
    recall_data DATETIME NOT NULL DEFAULT NOW(),
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