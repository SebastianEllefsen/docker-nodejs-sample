# Use the official Node.js 18 image from Docker Hub
FROM node:18.0.0

# Set the working directory inside the container to /app
WORKDIR /app

# Copy the package.json and package-lock.json files into our working directory
COPY package*.json ./

# Install the dependencies in the package.json
RUN npm install

# Copy the rest of your application's code into the container
COPY . .

# Your application's port number
EXPOSE 3000

# The command to run your application
CMD ["node", "src/index.js"]
