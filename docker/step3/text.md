## Intro
Imagine a scenario where you have built Docker images and containers that you would be interested to keep and share it with your other collaborators or colleagues. The below methods shall help you achieve it.

Four basic Docker CLI comes into action:

- The **docker export** - Export a container’s filesystem as a tar archive
- The **docker import** - Import the contents from a tarball to create a filesystem image
- The **docker save** - Save one or more images to a tar archive (streamed to STDOUT by default)
- The **docker load** - Load an image from a tar archive or STDIN

<br>

#### Create Nginx Container
```plain
docker run -d -p 80:80 nginx
```{{exec}}
<br>

#### Displaying Running Container
```plain
docker ps -a
```{{exec}}
```plain
docker export df2 > nginx.tar
```{{exec}}
You could commit this container as a new image locally, but you could also use the Docker import command:
```plain
docker import - mynginx < nginx.tar
```{{exec}}
```plain
docker images
```{{exec}}
<br>
If you wanted to share this image with one of your collaborators, you could upload the tar file on a web server and let your collaborator download it and use the import command on his Docker host.

If you would rather deal with images that you have already committed, you can use the load and save commands:
```plain
docker save -o mynginx1.tar nginx
```{{exec}}
```plain
ls -l
```{{exec}}
```plain
docker rmi mynginx
```{{exec}}
<br>
Now delete all images and containers running and try to run the below command to load Docker image into your system:
```plain
docker images
```{{exec}}
```plain
docker load < mynginx1.tar
```{{exec}}
```plain
docker images
```{{exec}}

