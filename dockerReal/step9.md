## Managing Docker Volumes

#### Inspect the options
```plain
docker volume --help
```{{exec}}

#### List the volumes
```plain
docker volume ls
```{{exec}}

#### Create a volume
```plain
docker volume create feedback-file
```{{exec}}

#### Rename the local volume
```plain
docker run -d -p 3000:80 --name feedback-app -v feedback-file:/app/feedback -v "/root/data-volumes-01-starting-setup:/app" -v /app/node_modules feedback-node:volumes
```{{exec}}

#### Inspect the volume
```plain
docker volume inspect feedback
```{{exec}}

#### Remove the volume
```plain
docker volume stop feedback-file
```{{exec}}

```plain
docker volume rm feedback-file
```{{exec}}




