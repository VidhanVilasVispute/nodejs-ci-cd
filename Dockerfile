# Use official Node.js base image
FROM node:16

# Set working directory inside the container
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy all files to container
COPY . .

# Expose port
EXPOSE 3000

# Start the app
CMD ["node", "index.js"]
