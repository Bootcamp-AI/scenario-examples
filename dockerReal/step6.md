## Combining & Merging Different Volumes

#### Fix express error
```plain
docker run -d -p 3000:80 --name feedback-app -v feedback:/app/feedback -v "/root/data-volumes-01-starting-setup:/app" -v /app/node_modules feedback-node:volumes
```{{exec}}

#### Update Dockerfile
```
FROM node:14
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
EXPOSE 80
#VOLUME /app/node_modules
CMD [ "node", "server.js" ]
```

#### Stop docker container
```plain
docker stop feedback-app
```{{exec}}

#### Remove docker container
```plain
docker rm feedback-app
```{{exec}}
