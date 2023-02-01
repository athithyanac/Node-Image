FROM alpine:3.17
RUN mkdir /var/app 
WORKDIR /var/app
COPY . .
RUN apk add --update --no-cache nodejs npm
RUN npm install
EXPOSE 5000
CMD [ "node" , "index.js" ]
