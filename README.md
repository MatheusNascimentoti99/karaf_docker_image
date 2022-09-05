## Create image to run Soft-IoT in Karaf 4.4.1

RUN 

```
docker compose up
```

To run in interactive mode you need to run the following command

```
docker compose exec -ti karaf /bin/bash
```

After that you can run the following command to install bundlers and dependencies

```
./init.sh
```
