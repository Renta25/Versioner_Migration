# **Versioner Migration**

This is database migration project. Versioner using it to updates/creates tables.

# Tools:
* [Mariadb:10.5.8](https://mariadb.org)*
* [Migrate](https://github.com/golang-migrate/migrate)
* [Docker](https://www.docker.com/)

# Commands
- First way: [Migrate](https://github.com/golang-migrate/migrate)
    - Download repository
    ```bash
    curl -LJO https://github.com/Renta25/Versioner_Migration/archive/main.zip
    ```
    - Unzip
    ```bash
    unzip Versioner_Migration-main.zip 
    ```
    - Run migrate
    ```shel
    migrate -path /<**Path to project**>/Versioner_Migration-main -database mysql://<**mysql_user**>:<**mysql_password**>@<**db_address**>:<**db_port**>/<**database**> up
    ```
- Second way: [Docker](https://www.docker.com/)
    - Download repository
    ```bash
    curl -LJO https://github.com/Renta25/Versioner_Migration/archive/main.zip
    ```
    - Unzip
    ```bash
    unzip Versioner_Migration-main.zip 
    ```
    - Run docker
    ```bash
    docker run -v <**Path to project**>/Versioner_Migration-main:/migrations migrate/migrate
    -path=/migrations/ -database mysql://<**mysql_user**>:<**mysql_password**>@<**db_address**>:<**db_port**>/<**database**> up
    ```
