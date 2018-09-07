FROM node:9-slim
ENV PORT 8080
EXPOSE 8080
WORKDIR /usr/src/app
COPY . .
ENV SHELL /bin/bash
ENV USE_LOCAL_GIT true
ENTRYPOINT [ "yarn", "theia", "start", "/home/project", "--hostname=0.0.0.0", "--port=8080" ]
