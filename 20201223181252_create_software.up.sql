CREATE TABLE IF NOT EXISTS softwares(
    id  INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name TEXT NOT NULL,
    descritpion TEXT NOT NULL DEFAULT "Description is empty",
    private BOOLEAN NOT NULL,
    creator_id INT UNSIGNED NOT NULL,
    create_data DATETIME NOT NULL DEFAULT NOW(),
    modifer_id INT UNSIGNED,
    modify_data DATETIME DEFAULT NULL ON UPDATE NOW(),

    FOREIGN KEY (creator_id) REFERENCES accounts (id),

    FOREIGN KEY (modifer_id) REFERENCES accounts (id)
        ON DELETE SET NULL
);