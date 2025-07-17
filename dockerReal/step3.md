## Anonymous volumes
Docker set up a folder / path on your host machine, exact location is unknown to you (=dev).
Managed via a docker volume commands.

#### Add volume

```
FROM node:14
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
EXPOSE 80
VOLUME ["/app/feedback"]
CMD [ "node", "server.js" ]
```

#### Rebuild the image
```plain
docker build -t feedback-node:volumes .
```{{exec}}

#### Run the Dockerfile
```plain
docker run -d -p 3000:80 --rm --name feedback-app feedback-node:volumes
```{{exec}}

#### Run
```plain
docker ps
```{{exec}}

#### Fix the error
At server.js
```
await fs.copyFile(tempFilePath, finalFilePath)
await fs.unlink(tempFilePath)
```



