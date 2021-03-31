# Specify a base image
# Most strip down version of the image
FROM node:alpine 

WORKDIR /usr/app

# install some dependencies
COPY ./ ./
RUN npm install

# Default command
CMD ["npm", "start"]