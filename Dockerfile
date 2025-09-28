# Use Node.js LTS base image
FROM node:18

# Set working directory
WORKDIR /usr/src/app

# Copy package files first (better caching)
COPY package*.json ./

# Install dependencies
RUN npm install 

# Copy the rest of the app
COPY . .

# Expose port
EXPOSE 8080

# Run app
CMD ["name", "server.js"]
