<br>

## Listing the Docker Images

```plain
docker images
```{{exec}}


## Show all images (default hides intermediate images)
```plain
docker images -a
```{{exec}}

## List images by name and tag
The docker images command takes an optional [REPOSITORY[:TAG]] argument that restricts the list to images that match the argument. If you specify REPOSITORY but no TAG, the docker images command lists all images in the given repository.

To demo this, let us pull all various versions of alpine OS
```plain
docker pull alpine:3.6
docker pull alpine:3.7
docker pull alpine:3.8
docker pull alpine:3.9
```{{exec}}

```plain
docker images
```{{exec}}

```plain
docker images alpine:3.7
```{{exec}}

## List the full length image IDs
```plain
docker images --no-trunc
```{{exec}}

## Listing out images with filter
```plain
docker images
```{{exec}}

If you want to filter out just alpine
```plain
docker images --filter=reference='alpine'
```{{exec}}

## Explanation
The [REPOSITORY[:TAG]] value must be an “exact match”.




