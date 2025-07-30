FROM node:alpine

RUN mkdir node

COPY . ./node

WORKDIR /node/

RUN npm install

# Fix line endings and make executable
RUN sed -i 's/\r$//' bin/serve-site.js
RUN chmod +x bin/serve-site.js

CMD npm start