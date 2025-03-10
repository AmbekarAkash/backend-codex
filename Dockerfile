# Use official Node.js runtime
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json before copying source code
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy source code after installing dependencies
COPY . .

# Expose port (if your backend runs on port 3000)
EXPOSE 3000

# Start the application
CMD ["node", "server.js"]
