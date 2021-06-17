# Create image based on the official Node
FROM node:14.17.1-alpine3.13

# Create a directory where our app will be placed
RUN mkdir -p /app

# Create app directory
WORKDIR /app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json /app/

RUN npm install --silent

# If you are building your code for production
#RUN npm ci --only=production

# Bundle app source
COPY . /app/

#EXPOSE 8080
#CMD [ "node", "server.js" ]
CMD [ "npm", "start" ]