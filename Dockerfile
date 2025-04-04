# Use Ubuntu as base image
FROM ubuntu 

# Update system and install curl
RUN apt-get update -y && apt-get install -y curl 

# Download and execute NodeSource setup script for Node.js 16
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -

# Upgrade packages and install Node.js (which includes npm)
RUN apt-get upgrade -y && apt-get install -y nodejs 

# Verify installation
RUN node -v && npm -v

# Copy application files
COPY package.json package-lock.json main.js ./

# Install dependencies
RUN npm install

# Set the entrypoint command
ENTRYPOINT [ "node", "main.js" ]
