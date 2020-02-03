# base image
FROM node:latest

# make the 'app' folder the current working directory
RUN mkdir /app
WORKDIR /

# install and cache app dependencies
COPY package*.json /
RUN npm install

WORKDIR /app

# expose port 8080 to the host
EXPOSE 8080

CMD ["/app/start.sh"]
