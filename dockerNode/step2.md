### Docker

Create Dockerfile
```
FROM node
WORKDIR /app
COPY . /app
RUN npm install
EXPOSE 80
CMD ["node", "server.js"]
```

#### Run
```plain
docker build .
```{{exec}}

#### Run
Place your id
```plain
docker run -p 3000:80 <id>
```{{exec}}

#### Open the app in 
{{TRAFFIC_HOST1_3000}}

#### Run
```plain
docker ps
```{{exec}}

#### Run
```plain
docker stop <name>
```{{exec}}


