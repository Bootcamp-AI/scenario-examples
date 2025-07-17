## Using nodemon

#### Restart the container
```plain
docker stop feedback-app
```{{exec}}

```plain
docker run -d -p 3000:80 --name feedback-app -v feedback:/app/feedback -v "/root/data-volumes-01-starting-setup:/app" -v /app/node_modules feedback-node:volumes
```{{exec}}

#### Check the logs
```plain
docker logs feedback-app
```{{exec}}

Add the dependencies in the package.json file
```
"devDependencies": {
    "nodemon": "2.0.4"
  }
```
Add the script in the package.json file
```
"scripts": {
    "start": "nodemon server.js"
  },
```


#### Update the Dockerfile
```
FROM node:14
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
EXPOSE 80
#VOLUME /app/node_modules
CMD [ "npm", "start" ]
```

#### Stop docker container
```plain
docker stop feedback-app
```{{exec}}

#### Remove the image and volumes
```plain
docker rmi feedback-node:volumes
```{{exec}}

#### Rebuild the image
```plain
docker build -t feedback-node:volumes .
```{{exec}}

#### Restart the container
```plain
docker run -d -p 3000:80 --name feedback-app -v feedback:/app/feedback -v "/root/data-volumes-01-starting-setup:/app" -v /app/node_modules feedback-node:volumes
```{{exec}}

#### Check the logs
```plain
docker logs feedback-app
```{{exec}}

