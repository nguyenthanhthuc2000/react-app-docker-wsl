# My React App

This project is a simple React application set up to run inside a Docker container. It includes configurations to facilitate development using Docker and Docker Compose.

## Features

- **Docker Setup**: Easily run the React application using Docker.
- **Hot Reload**: Set up to support hot reloading for seamless development.
- **Environment Variables**: Configured environment variables for development needs.
- **Exposed Port**: Application accessible on port 3000.

## Prerequisites

Make sure you have Docker installed on your machine.

## Getting Started

### Clone the repository:

```bash
git clone https://github.com/nguyenthanhthuc2000/my-react-app.git
cd my-react-app

### `docker build -t my-app .`
### `docker run -p 3000:3000 -v $(pwd)/my-app-react:/var/www/app my-app`