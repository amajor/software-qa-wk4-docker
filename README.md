# Week 4 Lab

See a screenshots of it all working together in the [summary](./docs/show_its_working.md).

## Build/Rebuild the Docker Container

```shell
sudo docker-compose -f ./docker-compose.yml -p lab-4 build
```

### Bring Environment Up

```shell
sudo docker-compose -f ./docker-compose.yml -p lab-4 up -d
```

### See Logs for Test File

```shell
sudo docker logs lab-4_test_client_1
```

### Show Running Services

```shell
sudo docker-compose ps --services
```

### Bring Environment Down

```shell
sudo docker-compose -f ./docker-compose.yml -p lab-4 down
```
