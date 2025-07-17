## Read-Only Volumes

#### Update 
```plain
docker run -d -p 3000:80 --name feedback-app -v feedback:/app/feedback -v "/root/data-volumes-01-starting-setup:/app:ro" -v /app/node_modules feedback-node:volumes
```{{exec}}