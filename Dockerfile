FROM node:12-alpine

RUN mkdir /myapp
WORKDIR /myapp

COPY package-lock.json /myapp/package-lock.json
COPY package.json /myapp/package.json

RUN npm install

RUN mkdir /myapp/server
WORKDIR /myapp/server

COPY server/package-lock.json /myapp/server/package-lock.json
COPY server/package.json /myapp/server/package.json

RUN npm install


EXPOSE 3000

CMD [ "tail", "-f", "/dev/null" ]


