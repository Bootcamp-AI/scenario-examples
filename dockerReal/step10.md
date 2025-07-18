## Using COPY vs Bind Mounts
We use Bind during development to persist data, but in production we use a database to store it.
We need in production a snapshot of my code for that reason we use COPY

<br><br>
Let's hide COPY to see if it works
#### Update the Dockerfile
Hide COPY
```
FROM node:14
WORKDIR /app
COPY package.json .
RUN npm install
#COPY . .
EXPOSE 80
#VOLUME /app/node_modules
CMD [ "npm", "start" ]
```

#### Rebuild the image
```plain
docker build -t feedback-node:no-copy .
```{{exec}}

#### Run with nocopy
```plain
docker run -d -p 3000:80 --name feedback-app -v feedback:/app/feedback -v "/root/data-volumes-01-starting-setup:/app" -v /app/node_modules feedback-node:no-copy
```{{exec}}

Still works but we need a snapshot of my code for that reason we use COPY.
<br><br>
#### Update the Dockerfile
Make COPY visible
```
FROM node:14
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
EXPOSE 80
#VOLUME /app/node_modules
CMD [ "npm", "start" ]

#### Rebuild the image
```plain
docker build -t feedback-node:copy .
```{{exec}}

#### Run with COPY
```plain
docker run -d -p 3000:80 --name feedback-app -v feedback:/app/feedback -v "/root/data-volumes-01-starting-setup:/app" -v /app/node_modules feedback-node:copy
```{{exec}}

