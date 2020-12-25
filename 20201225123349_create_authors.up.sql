CREATE TABLE IF NOT EXISTS authors(
    id  INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name TEXT NOT NULL,
    surname TEXT NOT NULL,
    github_url TEXT,
    linkedin_url TEXT,
    home_url TEXT,
    creator_id INT UNSIGNED,
    create_data DATETIME NOT NULL DEFAULT NOW(),
    modifer_id INT UNSIGNED,
    modify_data DATETIME DEFAULT NULL ON UPDATE NOW(),

    FOREIGN KEY (creator_id) REFERENCES accounts (id)
        ON DELETE SET NULL,

    FOREIGN KEY (modifer_id) REFERENCES accounts (id)
        ON DELETE SET NULL
);