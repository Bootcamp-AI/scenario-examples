## Bind Mounts
Docker bind mounts allow you to mount a file or directory from the host machine directly into a Docker container. This creates a direct link between a specific path on your host's filesystem and a path inside the container.

You define a folder / path on your host machine

#### Stop docker container
```plain
docker stop feedback-app
```{{exec}}

#### Run the container
```plain
docker run -d -p 3000:80 --name feedback-app -v feedback:/app/feedback -v "/root/data-volumes-01-starting-setup:/app" feedback-node:volumes
```{{exec}}

#### Run
```plain
docker ps -a
```{{exec}}

#### Run
```plain
docker logs feedback-app
```{{exec}}