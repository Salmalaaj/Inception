# Inception System Administration Project

## Project Overview
The Inception Project is designed to enhance practical knowledge of system administration through the virtualization of services using Docker. This educational project requires participants to configure a series of interconnected services within a virtual machine environment, emphasizing the use of Docker and Docker Compose.

## Project Objectives
The primary goal of this project is to set up a small infrastructure consisting of different services under specific configuration rules. It serves as an exercise in:
- Virtualizing services using Docker containers.
- Managing service configurations and interconnections through Docker Compose.
- Ensuring data persistence and secure service interaction in a simulated production environment.

## Architecture
The project includes the following key components:
- **NGINX:** Configured to handle HTTPS traffic only, emphasizing the use of TLS protocols for security.
- **WordPress:** Set up with php-fpm to manage PHP processing, running independently of NGINX.
- **MariaDB:** Utilized for database services, configured to operate in isolation from other services to mimic production-level database management.

## Containers and Networking
Each service runs within its own Docker container, ensuring that services are isolated, manageable, and scalable. Containers are built from either Alpine or Debian images, chosen for their reliability and performance. The Docker network facilitates secure and efficient communication between containers without reliance on deprecated linking methods.

## Configuration and Management
Configuration files and management scripts are centralized within the `srcs` directory, with environmental variables managed through a `.env` file to secure sensitive information. A `Makefile` is used to streamline the build and setup processes, encapsulating commands for Docker Compose and ensuring consistency across installations.

## Security Practices
The project adheres to best practices in security, notably in the handling of sensitive information and configuration of services. Passwords and sensitive data are managed outside of Dockerfiles and are instead configured via environment variables to prevent exposure.

## Project Constraints
Participants are encouraged to build custom Docker images rather than pulling pre-made images from public repositories, except for the base operating system images. This requirement aims to deepen understanding of Dockerfile configuration and image building processes.
