# Create image based on the official Node image from dockerhub
FROM node:14.17.1-alpine3.13

# Create app directory
WORKDIR /app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json /app/

# Install dependecies
RUN npm install 

# If you are building your code for production
#RUN npm ci --only=production

# Bundle app source
# COPY ./client/build ./client/build
COPY . /app/

# Expose the port the app runs in
#EXPOSE 3000

# Serve the app
CMD [ "npm", "start" ]