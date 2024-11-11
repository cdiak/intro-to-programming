## REST API

- **REST API** (Representational State Transfer Application Programming Interface) is a set of rules and conventions for creating and interacting with web services. REST APIs are designed to provide a scalable and efficient way for applications to communicate over HTTP, leveraging the principles of REST architecture to facilitate client-server interactions.

### Core Concepts:

1. **Resources**:
   - In REST architecture, resources are the fundamental entities that APIs interact with. Each resource is identified by a unique URI (Uniform Resource Identifier). Resources can be entities like users, products, or orders, and they can be manipulated through HTTP methods.

2. **HTTP Methods**:
   - REST APIs use standard HTTP methods to perform operations on resources:
     - **GET**: Retrieves a resource or a collection of resources.
     - **POST**: Creates a new resource.
     - **PUT**: Updates an existing resource.
     - **DELETE**: Removes a resource.

3. **Statelessness**:
   - REST APIs are stateless, meaning that each request from a client to the server must contain all the information needed to understand and process the request. The server does not store any client context between requests.

4. **Representation**:
   - Resources are represented in various formats, such as JSON (JavaScript Object Notation) or XML (eXtensible Markup Language). The representation of a resource is the data format used to convey the resource's state to the client.

5. **Uniform Interface**:
   - REST APIs follow a uniform interface principle that simplifies and decouples the architecture. This includes:
     - **Resource Identification**: Resources are identified by URIs.
     - **Resource Manipulation**: Resources are manipulated through representations using standard HTTP methods.
     - **Self-descriptive Messages**: Each message includes enough information to describe how to process it.
     - **HATEOAS (Hypermedia as the Engine of Application State)**: Clients interact with the API through hyperlinks provided by the server, guiding them through the available actions.

### HTTP Methods and CRUD Operations:

1. **GET**:
   - Retrieves data from the server.
   - **Example**: `GET /users/123` fetches details of the user with ID 123.
   - **Response**:
     ```json
     {
       "id": 123,
       "name": "John Doe",
       "email": "john.doe@example.com"
     }
     ```

2. **POST**:
   - Submits data to the server to create a new resource.
   - **Example**: `POST /users` creates a new user with the data provided in the request body.
   - **Request Body**:
     ```json
     {
       "name": "Jane Doe",
       "email": "jane.doe@example.com"
     }
     ```
   - **Response**:
     ```json
     {
       "id": 124,
       "name": "Jane Doe",
       "email": "jane.doe@example.com"
     }
     ```

3. **PUT**:
   - Updates an existing resource with the provided data.
   - **Example**: `PUT /users/123` updates the user with ID 123 with new data.
   - **Request Body**:
     ```json
     {
       "name": "Johnathan Doe",
       "email": "johnathan.doe@example.com"
     }
     ```
   - **Response**:
     ```json
     {
       "id": 123,
       "name": "Johnathan Doe",
       "email": "johnathan.doe@example.com"
     }
     ```

4. **DELETE**:
   - Removes a resource from the server.
   - **Example**: `DELETE /users/123` deletes the user with ID 123.
   - **Response**:
     ```json
     {
       "message": "User deleted successfully."
     }
     ```

### Status Codes:

1. **2xx Success**:
   - **200 OK**: The request was successful, and the server returned the requested data.
   - **201 Created**: The request was successful, and a new resource was created.
   - **204 No Content**: The request was successful, but there is no content to return.

2. **4xx Client Error**:
   - **400 Bad Request**: The server could not understand the request due to invalid syntax.
   - **401 Unauthorized**: The request requires user authentication.
   - **403 Forbidden**: The server understood the request but refuses to authorize it.
   - **404 Not Found**: The requested resource could not be found.

3. **5xx Server Error**:
   - **500 Internal Server Error**: The server encountered an unexpected condition that prevented it from fulfilling the request.
   - **502 Bad Gateway**: The server received an invalid response from an upstream server.
   - **503 Service Unavailable**: The server is currently unable to handle the request due to temporary overload or maintenance.

### Authentication and Authorization:

1. **Basic Authentication**:
   - Involves sending a username and password encoded in the request header. This method is less secure and often used for simpler applications.

2. **OAuth**:
   - An open standard for access delegation commonly used for token-based authentication. OAuth allows applications to access resources on behalf of a user without exposing their credentials.

3. **JWT (JSON Web Token)**:
   - A compact, URL-safe token format used to securely transmit information between parties. JWTs are commonly used for authentication and authorization.

### Versioning:

1. **URI Versioning**:
   - Include the version number in the URI, e.g., `/v1/users`.

2. **Header Versioning**:
   - Specify the API version in the request header, e.g., `Accept: application/vnd.example.v1+json`.

3. **Query Parameter Versioning**:
   - Include the version number as a query parameter, e.g., `/users?version=1`.

### Real-World Analogy:

- **REST API** can be likened to a library's catalog system. Each book (resource) can be identified by a unique code (URI). You can check out a book (GET), add a new book (POST), update book details (PUT), or remove a book from the catalog (DELETE). The catalog system provides uniform access to all books and supports efficient querying.

### Benefits:

1. **Scalability**:
   - REST APIs can scale horizontally by adding more servers, allowing the system to handle increased load efficiently.

2. **Flexibility**:
   - REST APIs can support multiple data formats (e.g., JSON, XML) and are not tightly coupled with the backend, allowing clients to interact with different systems.

3. **Stateless Operations**:
   - Statelessness simplifies server design, as each request is independent and does not require server-side session management.

4. **Ease of Integration**:
   - REST APIs are widely adopted and supported across various platforms and programming languages, making integration with different systems straightforward.

### Related Concepts:

- [[HTTP Method]]: The methods used in REST APIs to interact with resources.
- [[URI (Uniform Resource Identifier)]]: The identifier used to uniquely locate resources in a REST API.
- [[JSON (JavaScript Object Notation)]]: A common data format used for representing resources in REST APIs.
- [[OAuth]]: A standard for token-based authentication used with REST APIs.
- [[HATEOAS (Hypermedia as the Engine of Application State)]]: A constraint of REST that allows clients to interact with a RESTful API entirely through hypermedia provided by the server.

**REST API** provides a standardized and efficient way to enable communication between web services and clients. By adhering to REST principles, APIs offer a scalable, flexible, and easy-to-integrate solution for interacting with resources over HTTP.