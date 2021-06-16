FROM node:14.17.1-alpine3.13

# Create app directory
WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install --silent

# If you are building your code for production
#RUN npm ci --only=production

# Bundle app source
# COPY ./client/build ./client/build
COPY . .

#EXPOSE 8080
CMD [ "node", "server.js" ]