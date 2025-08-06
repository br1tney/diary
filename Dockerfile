# Use Node.js official image (adjust version as needed)
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install --production

# Copy application code
COPY . .

# Expose port (change if your app uses another port)
EXPOSE 3000

# Start app
CMD ["npm", "start"]
