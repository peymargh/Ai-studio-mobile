FROM node:18-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install npm dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the application (assuming a build script is defined in package.json)
RUN npm run build

# Expose ports 3000 and 8000
EXPOSE 3000 8000

CMD ["npm", "start"]