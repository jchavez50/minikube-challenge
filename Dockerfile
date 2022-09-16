FROM node:17.1.0
EXPOSE 8080
COPY server.js .
CMD node server.js