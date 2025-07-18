## Working with Environment Variables

#### Update the server.js file
```
app.listen(process.env.PORT)
```

#### Update the Dockerfile
Hide COPY
```
FROM node:14
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
ENV PORT 80
EXPOSE $PORT
#VOLUME /app/node_modules
CMD [ "npm", "start" ]
```

#### Rebuild the image
```plain
docker build -t feedback-node:env .
```{{exec}}

#### Run with env
```plain
docker volume stop feedback-app
```{{exec}}
Map th port 8000
```plain
docker run -d -p 3000:8000 -env PORT=8000 --name feedback-app -v feedback:/app/feedback -v "/root/data-volumes-01-starting-setup:/app" -v /app/node_modules feedback-node:env
```{{exec}}

#### Add .env
Create an .env file
```
PORT=8000
```
```plain
docker volume stop feedback-app
```{{exec}}
```plain
docker run -d --rm -p 3000:8000 --env-file ./.env --name feedback-app -v feedback:/app/feedback -v "/root/data-volumes-01-starting-setup:/app" -v /app/node_modules feedback-node:env
```{{exec}}
