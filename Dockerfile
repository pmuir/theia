FROM node:9
WORKDIR /usr/src/app
COPY . .
EXPOSE 8080
WORKDIR /usr/src/app/examples/browser
ENV SHELL /bin/bash
RUN mkdir /home/project
CMD yarn run start /home/project --hostname 0.0.0.0 --port 8080