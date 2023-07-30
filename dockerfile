# FROM is used to create the initial build stage of the image we specify
# FROM imageName:version
FROM node:current-alpine

# Create app directory for container
WORKDIR /app

# Bundle the app source code
COPY . .

# Install app dependencies, this image will comes with Node.js and NPM already installed
# RUN is use to execute commands during the docker build process
RUN npm install

# Inform expose the app to port 3001
EXPOSE 3001

# CMD to run the docker container process
CMD ["node", "app.js"]