### Docker

Create Dockerfile
```
FROM python
WORKDIR /app
COPY . /app
CMD [ "python", "rng.py" ]
```

#### Run
```plain
docker build .
```{{exec}}

#### Run
Place your id
```plain
docker run -it <id>
```{{exec}}

#### Run
```plain
docker ps -a
```{{exec}}

#### Run
```plain
docker start -a <docker_name>
```{{exec}}


