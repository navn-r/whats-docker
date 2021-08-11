# Start from pre-made node base image
# Use Alpine linux as the base distro
FROM node:16-alpine3.14

# Set the working directory of the container
WORKDIR /app

# Copy the dependency list into the container
COPY package*.json ./

# Build node modules
RUN npm install

# Copy the source code into the container
COPY . .

# Expose the container port of 8080 outside
EXPOSE 8080

# Runs to start the server
CMD ["npm", "start"]