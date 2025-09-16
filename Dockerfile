#Use the latest LTS version of Node.js
FROM node:18.20.4-alpine

#Setup working directory
WORKDIR /app

#Copy package*.json files
COPY package*.json ./

#Install dependencies
RUN npm install

#COPY rest of application files
COPY . .

# Expose the port your app runs on
EXPOSE 3000

#Define the command to run your app
CMD [ "npm", "start" ]