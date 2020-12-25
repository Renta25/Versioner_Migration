CREATE TABLE IF NOT EXISTS downlad_logs(
    id  INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    software_id INT UNSIGNED NOT NULL,
    version_id INT UNSIGNED NOT NULL,
    licence_id INT UNSIGNED,
    ip TEXT NOT NULL,
    creator_id INT UNSIGNED,
    create_data DATETIME NOT NULL DEFAULT NOW(),

    FOREIGN KEY (software_id) REFERENCES softwares (id)
        ON DELETE CASCADE,
    
    FOREIGN KEY (version_id) REFERENCES versions (id)
        ON DELETE CASCADE,
    
    FOREIGN KEY (licence_id) REFERENCES software_licence (id)
        ON DELETE SET NULL,

    FOREIGN KEY (creator_id) REFERENCES accounts (id)
        ON DELETE SET NULL
);