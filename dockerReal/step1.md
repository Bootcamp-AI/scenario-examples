### Docker

Create Dockerfile
```
FROM node:14
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
EXPOSE 80
CMD [ "node", "server.js" ]
```

#### Run
```plain
docker build -t feedback-node .
```{{exec}}

#### Run
Place your id
```plain
docker run -p 3000:80 -d --name feedback-app --rm feedback-node
```{{exec}}

#### Open the app in 
{{TRAFFIC_HOST1_3000}}

#### Run
```plain
docker ps
```{{exec}}




