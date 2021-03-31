# Specify a base image
# Most strip down version of the image
FROM node:alpine 

WORKDIR /usr/app

# install some dependencies
COPY ./package.json ./
RUN npm install
COPY ./ ./

# Default command
CMD ["npm", "start"]