# Running Laravel with Docker on Local

This guide will help you set up a Laravel application using Docker, with an existing database network.

## Prerequisites

- Docker and Docker Compose installed on your system
- A Laravel application

## Setup Instructions

1. Navigate to the root of your Laravel application.

2. Create a new folder named `docker`:

   ```bash
   mkdir docker
   ```

3. Clone this Docker configuration project into the `docker` folder:

   ```bash
   git clone [repository-url] docker
   ```

   Replace `[repository-url]` with the actual URL of the Docker configuration repository.

4. Build and run the Docker containers:

   ```bash
   cd docker
   docker-compose up --build
   ```

This will set up your Laravel application with Docker, creating all necessary containers as defined in the `docker-compose.yml` file.

## Additional Information

- The database network will be created automatically by Docker Compose.
- Make sure your Laravel `.env` file is configured to use the appropriate Docker service names for database connections.
- For any issues or additional configuration needs, refer to the Docker documentation or the specific instructions provided in the Docker configuration repository.