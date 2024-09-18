# Running Laravel with Docker on Local

This guide outlines the process of setting up a Laravel application using Docker, utilizing an existing database network.

## Prerequisites

- Docker and Docker Compose installed on your system
- A Laravel application
- An existing database network

## Setup Instructions

1. Navigate to the root directory of your Laravel application.

2. Clone the Docker configuration project:
   ```bash
   git clone [repository-url] docker
   ```
   Replace `[repository-url]` with the actual URL of the Docker configuration repository.

3. Build and run the Docker containers:
   ```bash
   cd docker
   docker-compose up --build
   ```

## Configuration

1. Ensure your Laravel `.env` file is configured to use the appropriate Docker service names for database connections.

2. Connect your containers to the existing database network in the `docker-compose.yml` file:
   ```yaml
   networks:
     existing_db_network:
       external: true
   ```

## Troubleshooting

For issues or additional configuration needs, refer to:
- The Docker documentation
- Specific instructions in the Docker configuration repository

## Additional Notes

- This setup creates all necessary containers as defined in the `docker-compose.yml` file.
- The existing database network should be specified in your Docker Compose configuration.
- Customize the Docker configuration as needed for your specific Laravel application requirements.
