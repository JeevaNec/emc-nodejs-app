# Use official Node.js image
FROM node:18

# Set working directory
WORKDIR /app

# Copy source code
COPY . .

# Install dependencies (none in this simple case)
RUN apt-get update && apt-get install -y git

# Expose port
EXPOSE 3000

# Start the app
CMD ["node", "index.js"]
