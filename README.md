# Book API demo

## Requirements
* Java 23
* Docker Desktop
* Postgres 17

## Usage
1. Create a file named `application.properties` in /src/main/resources/
```properties
  spring.application.name=book_api_demo
  spring.datasource.url=jdbc:postgresql://localhost:5432/booksdb
  spring.datasource.username=
  spring.datasource.password=
  spring.jpa.hibernate.ddl-auto=update
  spring.jpa.show-sql=true
  ```
2. Docker Engine must be running in the background.
* (Optional because Spring boot should handle this) Run `docker compose up -d`
3. Run the application on IntelliJ