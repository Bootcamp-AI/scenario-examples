
De

Create a Dockerfile
```plain
nano Dockerfile
```{{exec}}

```
FROM node:14 
WORKDIR /app
COPY ["package.json", "./"]
RUN npm install
COPY . .
EXPOSE 3000
CMD ["node", "app.mjs"]
```

#### Run
```plain
docker build .
```{{exec}}


#### Run
```plain
docker run -p 80:3000 <id>
```{{exec}}

{{TRAFFIC_HOST1_80}}

#### Run
```plain
docker ps
```{{exec}}

#### Run
```plain
docker stop <name>
```{{exec}}




