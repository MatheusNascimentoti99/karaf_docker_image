## Create image to run Soft-IoT in Karaf 4.4.1
### Build image
```
cd karaf && docker build -t karaf . 
```

## Create and run docker image

```
docker run -i -t -p 1883:1883 -p 8181:8181 -p 1099:1099 -p 8101:8101 -p 61616:61616 -p 44444:44444 karaf
```
It will take a time to complete the installation

## Create docker image from docker compose

```
docker compose up
```

To run in interactive mode you need to run the following command

```
docker compose exec -ti karaf /bin/bash
```

