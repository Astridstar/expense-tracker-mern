# Create image based on the official Node image from dockerhub
FROM node:14.17.1-alpine3.13 as build

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json /usr/src/app/

# Install dependecies
RUN npm install debug
RUN npm install react-scripts@3.4.0 -g

# Bundle app source
COPY . /usr/src/app/

#RUN npm run build

# Expose the port the app runs in
#EXPOSE 3000

# Serve the app
CMD [ "npm", "start" ]

#FROM nginx:stable-alpine

# Copy content to nginx to serve
#COPY --from=build /usr/src/app/build  /usr/share/nginx/html

#RUN rm /etc/nginx/conf.d/default.conf

# Copy configuration to the package
#COPY nginx/nginx.conf /etc/nginx/conf.d

# new
#COPY nginx/nginx.conf /etc/nginx/conf.d/default.conf

#EXPOSE 80
#CMD ["nginx", "-g", "daemon off;"]

#RUN echo "************ BUILD DOCKERFILE DONE ************"
