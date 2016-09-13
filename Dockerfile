FROM mhart/alpine-node

WORKDIR /src
ADD . .

RUN npm install

CMD [ "node", "app.js" ]
