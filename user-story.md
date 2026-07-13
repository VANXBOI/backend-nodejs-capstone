# SecondChance Project User Stories

This document contains the user stories for the SecondChance capstone project.

---

## 1. Finish User Stories
**As a** Developer  
**I need** to write and refine user stories  
**So that** I can establish a product backlog and plan the development sprints effectively.  

### Details and Assumptions
* Template must follow the "As a... I need... So that..." structure.
* Must include details/assumptions and acceptance criteria.
* Labels (`new`, `backlog`, `icebox`, `technical debt`) must be defined.

### Acceptance Criteria
```gherkin
Given a GitHub repository
When I create the issue template, labels, and all required user stories
Then the product backlog is refined and ready for the sprint.
```

---

## 2. Initialize and Populate MongoDB
**As a** Developer  
**I need** to set up a MongoDB database instance and populate it with sample data  
**So that** the backend application has a reliable NoSQL data store with realistic test data.  

### Details and Assumptions
* Use a local MongoDB instance or a cloud database instance.
* Import sample data from a JSON file.
* Set up database connection parameters in a `.env` file using `.env.sample`.

### Acceptance Criteria
```gherkin
Given a running MongoDB instance and a JSON data file
When I run the import command and configure the `.env` file
Then I can query the populated collections using mongosh to verify data integrity.
```

---

## 3. Run Skeleton Application
**As a** Developer  
**I need** to run the skeleton Express application locally  
**So that** I can verify that the server boots up and basic routes/middleware function correctly.  

### Details and Assumptions
* The skeleton includes `app.js`, `package.json`, and initial configuration.
* Node dependencies must be installed.

### Acceptance Criteria
```gherkin
Given the skeleton project code
When I run npm install and start the server
Then the server runs on the designated port without errors.
```

---

## 4. Implement SecondChanceItems Service API
**As a** User  
**I need** APIs to list, add, update, and delete second-chance items  
**So that** users can share their household items and others can browse them.  

### Details and Assumptions
* Items must be stored in the MongoDB database.
* RESTful endpoints: `GET /items`, `GET /items/:id`, `POST /items`, `PUT /items/:id`, `DELETE /items/:id`.

### Acceptance Criteria
```gherkin
Given a running items API service
When I send a request to create, read, update, or delete an item
Then the database is updated and the correct HTTP status code and JSON response are returned.
```

---

## 5. Implement Search Service API
**As a** Searcher  
**I need** to search for second-chance items with multiple query parameters (name, category, condition, age, etc.)  
**So that** I can quickly find the exact items I am looking for.  

### Details and Assumptions
* Search parameters can be combined.
* Must query MongoDB efficiently using search filters.

### Acceptance Criteria
```gherkin
Given a set of items in the database
When I query the search endpoint with specific parameters
Then only the items matching all the specified criteria are returned.
```

---

## 6. Implement Sentiment Analysis Service API
**As a** Developer/Admin  
**I need** to perform sentiment analysis on item descriptions or comments  
**So that** we can automatically identify the emotional tone (positive/negative/neutral) of user submissions.  

### Details and Assumptions
* Use a sentiment analysis library or microservice.
* Integrate it with the item submission or comment flow.

### Acceptance Criteria
```gherkin
Given text describing an item or in a comment
When the sentiment analysis endpoint is invoked
Then it returns a score indicating whether the sentiment is positive, neutral, or negative.
```

---

## 7. Implement Registration Backend Service API
**As a** New User  
**I need** to register a new account on the platform  
**So that** I can secure my own account to list items and manage my profile.  

### Details and Assumptions
* Hash passwords using bcrypt before saving them in the database.
* Validate input fields (email, password strength, username).

### Acceptance Criteria
```gherkin
Given valid user registration details
When I submit them to the registration endpoint
Then a new user record is created in the database and a success response is returned.
```

---

## 8. Implement Login Backend Service API
**As a** Registered User  
**I need** to authenticate using my email and password  
**So that** I can access protected features and obtain a secure token.  

### Details and Assumptions
* Generate a JSON Web Token (JWT) on successful login.
* Compare password hashes to verify identity.

### Acceptance Criteria
```gherkin
Given a registered user's correct credentials
When I submit them to the login endpoint
Then I receive a valid JWT to authenticate subsequent requests.
```

---

## 9. Implement User Profile Backend Service API
**As a** Authenticated User  
**I need** to view and edit my profile details  
**So that** I can keep my contact and personal information up to date.  

### Details and Assumptions
* Endpoint must be secured using JWT authentication middleware.
* Allow updating username, email, and other profile details.

### Acceptance Criteria
```gherkin
Given an authenticated user with a valid JWT
When I request or update my profile details
Then the profile is successfully returned or updated in the database.
```

---

## 10. Integrate the Frontend Provided with the Backend
**As a** End User  
**I need** to interact with the backend API seamlessly via the React front-end interface  
**So that** I can use the web interface to perform all actions without directly calling API endpoints.  

### Details and Assumptions
* Configure CORS on the backend.
* Ensure front-end API calls point to the correct backend host/port.

### Acceptance Criteria
```gherkin
Given the React front-end and Node.js backend are running
When I perform actions on the UI (e.g., searching, logging in, updating profile)
Then the backend successfully processes the requests and the UI updates accordingly.
```

---

## 11. Add CI/CD Pipelines for Backend Services
**As a** Developer  
**I need** to set up CI/CD workflows (e.g., GitHub Actions)  
**So that** we can guarantee code quality and automate testing on every code commit.  

### Details and Assumptions
* Workflows trigger on push and pull requests.
* Run linting and unit tests.

### Acceptance Criteria
```gherkin
Given a new commit pushed to the repository
When the CI/CD pipeline triggers
Then it compiles, runs tests, and completes successfully.
```

---

## 12. Containerize the Services and Applications
**As a** DevOps Engineer  
**I need** to create Dockerfiles and build containers for the backend, frontend, and database services  
**So that** the application can run consistently across different development and production environments.  

### Details and Assumptions
* Create a Dockerfile for the backend and frontend.
* Configure a `docker-compose.yml` for multi-container orchestration.

### Acceptance Criteria
```gherkin
Given the project Dockerfiles and compose configuration
When I run docker-compose up
Then all services build, start up, and communicate correctly.
```

---

## 13. Deploy Backend Services
**As a** DevOps Engineer  
**I need** to deploy the containerized services to cloud platforms like Kubernetes and IBM Code Engine  
**So that** users can access the SecondChance application publicly on the web.  

### Details and Assumptions
* Set up Kubernetes manifests or deployment configs.
* Securely inject environment variables.

### Acceptance Criteria
```gherkin
Given containerized application images
When I apply the deployment configuration to the target cluster
Then the services run publicly and route traffic correctly.
```

---

## 14. Research Authentication in Express
**As a** Developer  
**I need** to research and document JWT authentication best practices in Express.js  
**So that** we can implement a highly secure, industry-standard authentication flow.  

### Details and Assumptions
* Technical Debt story (provides no direct visible customer value, but reduces technical risk).
* Investigate token expiration, secret management, and token refresh strategies.

### Acceptance Criteria
```gherkin
Given the requirement for secure authentication
When I complete the research and document the security strategy
Then the team has a clear blueprint for implementing login and profile APIs safely.
```
