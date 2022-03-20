FROM mhart/alpine-node:16

RUN apk add --update git && rm -rf /tmp/* /var/cache/apk/*

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install --omit dev

# Bundle app source
COPY . /usr/src/app
COPY config/ /usr/src/app/

EXPOSE 8899
CMD [ "node", "app.js" ]
