CREATE TABLE IF NOT EXISTS changelogs(
    id  INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    version_id  INT UNSIGNED NOT NULL,
    type ENUM('add','modify','delete','fix') NOT NULL,
    msg TEXT NOT NULL,
    creator_id INT UNSIGNED,
    create_data DATETIME NOT NULL DEFAULT NOW(),
    modifer_id INT UNSIGNED,
    modify_data DATETIME DEFAULT NULL ON UPDATE NOW(),

    FOREIGN KEY (version_id) REFERENCES versions (id)
        ON DELETE CASCADE,

    FOREIGN KEY (creator_id) REFERENCES accounts (id)
        ON DELETE SET NULL,

    FOREIGN KEY (modifer_id) REFERENCES accounts (id)
        ON DELETE SET NULL
);