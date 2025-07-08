# Demonstrating Hello World Example

## Running Hello World Example

```plain
docker run hello-world
```{{exec}}

### Explanation
This image is a prime example of using the scratch image effectively. See hello.c in [https://github.com/docker-library/hello-world](https://github.com/docker-library/hello-world) for the source code of the hello binary included in this image.

So what’s happened here? We’ve called the docker run command, which is responsible for launching containers.

The argument ```plain hello-world``` is the name of the image someone created on dockerhub for us. It will first search for “hello-world” image locally and then search in Dockerhub.

Once the image has been downloaded, Docker turns the image into a running container and executes it.
