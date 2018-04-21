FROM mc2labs/nodejs

RUN apt-get update &&\
    apt-get install -y npm &&\
    npm install -g n

# Copy config and script files

COPY package.json /app/package.json
COPY server.js /app/server.js
COPY run-passeidireto.sh /app

RUN chmod a+x /app/run-passeidireto.sh

ARG NODE_ENV=production
ARG NODE_VERSION=latest
ARG PROJECT_PATH=/app
ARG YARN=false

ENV YARN=$YARN
ENV PROJECT_PATH=$PROJECT_PATH
ENV NODE_ENV=$NODE_ENV

# Install the specified NODE_VERSION or grab latest
RUN n "$NODE_VERSION"

# Install Yarn

RUN if [ ${YARN} = true ]; then \
    npm install -g yarn \
;fi

WORKDIR /app
