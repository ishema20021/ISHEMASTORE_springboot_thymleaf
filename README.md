# E-commerce Web Application

## Project Overview
This project is a simple e-commerce web application developed as a Mini Project for the **Web Technology & Internet (INSY-413)** course at the **Faculty of Information Technology**. It leverages **Spring Boot** for the backend and **Thymeleaf** for the frontend to create a functional online store. The application supports both customers and admins with the following user stories.

### User Stories
- **As a customer**, I want to browse products and view their details.
- **As a customer**, I want to add products to my shopping cart.
- **As a customer**, I want to view my shopping cart and proceed to checkout.
- **As a customer**, I want to register/login to the application to manage my orders.
- **As an admin**, I want to add new products to the store and manage existing products.
- **As an admin**, I want to view orders and update their status.

## Technologies Stack
- **Backend**: Spring Boot, Spring Data JPA, Spring Security
- **Frontend (Thymeleaf)**: Thymeleaf, Spring MVC
- **Styling**: Bootstrap or Material-UI
- **Database**: MySQL or PostgreSQL
- **Build Tool**: Maven or Gradle

## Requirements

### Backend (Spring Boot) Requirements - /7pts
1. Define roles (e.g., `USER`, `ADMIN`) and restrict access based on these roles using Spring Security.
2. Create APIs to manage products (CRUD operations) with entities (`Product`) and repositories for product management.
3. Implement APIs for managing orders (placing orders, order history).
4. Define entities (`Order`) and establish relationships with users and products.
5. Design and implement RESTful APIs for frontend interaction with JSON responses, using appropriate HTTP methods (GET, POST, PUT, DELETE) for CRUD operations.

### Frontend (Thymeleaf) Requirements - /18pts
1. Design and implement UI components for displaying products, user authentication, shopping cart, and order management.
2. Use libraries like Bootstrap or Material-UI for styling.
3. Integrate with backend APIs to fetch product information, authenticate users, and manage orders.
4. Implement user authentication forms (login, signup) and integrate with backend authentication APIs.
5. Develop features for adding/removing products to/from the cart.
6. Calculate totals and handle checkout processes.
7. Validate user inputs on the server-side using Spring validations.
8. Manage static resources (CSS, JavaScript) for styling and interactivity.

### Additional Requirements - /15pts
1. Implement error handling mechanisms for both backend and frontend.
2. Display meaningful error messages to users.
3. Deploy the application on a cloud platform (e.g., AWS, Azure, or Heroku).
4. Push the source code and documentation to a public GitHub repository.
5. Share the GitHub repository link via Google Classroom at [https://classroom.google.com/c/Nzc3NTAxMTgwNjMw/a/Nzc3NTAxNDA1NjEz/details](https://classroom.google.com/c/Nzc3NTAxMTgwNjMw/a/Nzc3NTAxNDA1NjEz/details) under [https://classroom.google.com/c/Nzc3NTAxMTgwNjMw?cjc=oso5ymdx](https://classroom.google.com/c/Nzc3NTAxMTgwNjMw?cjc=oso5ymdx).

## Project Setup Instructions
### 1. Create a New Spring Boot Project
- Use [Spring Initializr](https://start.spring.io/) to generate a Spring Boot project.
- Select **Maven** or **Gradle** as the build tool.
- Add dependencies: Spring Web, Spring Data JPA, Spring Security, Thymeleaf, and a database driver (e.g., MySQL).

### 2. Configure Database Connectivity
- Set up a MySQL or PostgreSQL database.
- Create a database named `ecommerce`.
- Update `src/main/resources/application.properties` with your database credentials:

spring.datasource.url=jdbc:postgresql://localhost:5432/ecommerce
spring.datasource.username=postgres
spring.datasource.password=ngabo
spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true


### 3. Use Spring Data JPA
- Define entities: `Product`, `Order`, and `User`.
- Create repositories extending `JpaRepository` for database operations.

### 4. Implement Spring Security
- Define roles (`USER`, `ADMIN`) in the database.
- Configure Spring Security to restrict access based on roles.
- Set up authentication endpoints for login and registration.

## Steps to Run the Project Locally
1. **Clone the Repository**
 - Clone this repository to your local machine:

git clone https://github.com/<ishema_20021>/e-commerce-web-app.git</ishema_20021>


2. **Navigate to the Project Directory**
- Change to the project directory:


3. **Configure the Database**
- Ensure your MySQL or PostgreSQL server is running.
- Update `application.properties` with your database credentials.

4. **Build the Project**
- Use Maven or Gradle to build the project and resolve dependencies:
-Ensure your MySQL or PostgreSQL server is running.
-Update application.properties with your database credentials.

5. **Build the Project
Use Maven to build the project and resolve dependencies:mvn clean install

6.**Run the Application
Run the Spring Boot application:mvn spring-boot:run


Alternatively, in an IDE:
Open the project in IntelliJ IDEA or Eclipse.
Locate the main class (e.g., EcommerceApplication.java).
Right-click and select Run.


7.**Access the Application

Open your browser and navigate to: http://localhost:8080
Register or log in as a customer (USER) or admin (ADMIN).
Explore features like browsing products, adding to cart, and managing orders.



8.**Project Structure

src/main/java/: Java source code (controllers, services, entities, repositories).
src/main/resources/: Configuration files (application.properties) and Thymeleaf templates (templates/).
src/main/resources/static/: Static resources (CSS, JavaScript).
pom.xml: Maven configuration file for dependencies and build settings.
target/: Generated after building (contains compiled classes and JAR file).

9.**Deployment
Deploy the application to a cloud platform like Heroku:
Install the Heroku CLI.
Log in to Heroku: heroku login.
Create a new Heroku app: heroku create.
Add a Procfile in the root directory with:web: java -jar target/e-commerce-web-app-0.0.1-SNAPSHOT.jar


Configure environment variables for the database on Heroku.
Push to Heroku: git push heroku main.

Alternative Platforms

Deploy to AWS or Azure following their respective guides.

Error Handling

Backend: Custom exceptions and @ControllerAdvice for global error handling.
Frontend: Thymeleaf templates display user-friendly error messages (e.g., "Product not found").
Validation: Server-side validation with Spring’s @Valid and error messages shown on forms.

Contributing
Contributions are welcome! To contribute:

Fork this repository.
Create a new branch: git checkout -b feature-branch.
Make your changes and commit: git commit -m "Add feature".
Push to your fork: git push origin feature-branch.
Open a pull request.

License
This project is licensed under the MIT License.
Submission

The source code and documentation are hosted publicly on this GitHub repository.
The repository link has been submitted via Google Classroom as per the instructions.


Done: May 22, 2025
