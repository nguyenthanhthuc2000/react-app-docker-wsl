# Use base image from Node.js
FROM node

# Add maintainer information
LABEL maintainer="Thuc Nguyen <nguyenthanhthuc.2k@gmail.com>"

# Set working directory inside the container to /var/www/app
WORKDIR /var/www/app

# Copy package.json and package-lock.json from my-app-react directory to the working directory inside the container
COPY my-app-react/package*.json ./

# Install dependencies for the React application
RUN npm install

# Copy entire source code of the React application from my-app-react directory to the working directory inside the container
COPY my-app-react/ ./

# Set environment variable to support automatic reload when editing source code
ENV WATCHPACK_POLLING=true

# Command to start the application when the container starts
CMD npm start

# Expose port 3000 to access the React application from outside the container
EXPOSE 3000
