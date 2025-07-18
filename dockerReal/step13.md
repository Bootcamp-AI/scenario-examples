## Using Build Arguments

#### Update the Dockerfile
```
FROM node:14
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
ARG DEFAULT_PORT=80
ENV PORT $DEFAULT_PORT
EXPOSE $PORT
#VOLUME /app/node_modules
CMD [ "npm", "start" ]
```


#### Rebuild the image
```plain
docker build -t feedback-node:dev --build-arg DEFAULT_PORT=8000 .
```{{exec}}
