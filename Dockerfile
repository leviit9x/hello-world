
# Use an official Node.js runtime as a parent image
FROM node:16-alpine

# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install --only=production

# Copy the rest of the application code to the container
COPY . .

# Build the application
RUN npm install 

# Expose port 3000
EXPOSE 3000

# Start the application
CMD ["npm", "run", "preview"]