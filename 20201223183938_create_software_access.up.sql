CREATE TABLE IF NOT EXISTS software_access(
    id  INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    account_id INT UNSIGNED NOT NULL,
    software_id INT UNSIGNED NOT NULL,
    creator_id INT UNSIGNED,
    create_data DATETIME NOT NULL DEFAULT NOW(),

    FOREIGN KEY (account_id) REFERENCES accounts (id)
        ON DELETE CASCADE,
    
    FOREIGN KEY (creator_id) REFERENCES accounts (id)
        ON DELETE SET NULL,

    FOREIGN KEY (software_id) REFERENCES softwares (id)
        ON DELETE CASCADE
);