# Book API demo

A simple Spring Boot demo API with a PostgreSQL database.

## Requirements
* Java 23
* Docker Desktop
* Postgres 17

## Usage
0. Create mock database data by running `psql -U postgres -h localhost -f setup_mockdb.sql`
1. Create a file named `application.properties` in /src/main/resources/
```properties
  spring.application.name=book_api_demo
  spring.datasource.url=jdbc:postgresql://localhost:5432/booksdb
  spring.datasource.username=
  spring.datasource.password=
  spring.jpa.hibernate.ddl-auto=update
  spring.jpa.show-sql=true
  ```
2. Add postgres login credentials to `docker-compose.yml`
3. Docker Engine must be running in the background.
* (Optional because Spring boot should handle this) Run `docker compose up -d`
4. Run the application