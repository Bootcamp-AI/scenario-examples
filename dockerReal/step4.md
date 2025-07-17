## Named volumes
Grate for data which should be persistent but you don't need to edit directly.

#### Check the volumes

```plain
docker volumes ls
```{{exec}}

#### Edit Dockerfile
Delete the volume
```
FROM node:14
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
EXPOSE 80
CMD [ "node", "server.js" ]
```

#### Remove the image
```plain
docker rmi feedback-node:volumes
```{{exec}}

#### Rebuild the image
```plain
docker build -t feedback-node:volumes .
```{{exec}}

#### Restart the container
```plain
docker run -d -p 3000:80 --rm --name feedback-app feedback-node:volumes
```{{exec}}

