FROM node:14

# Set the working directory
WORKDIR /var/lib/jenkins/workspace/devops_project

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the application port
EXPOSE 3000

# Run the application
CMD ["node", "index.js"]

