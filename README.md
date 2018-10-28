# Pitagora-Galaxy 0.4.1

Create a file store (first time only).

```
docker create -v /export --name galaxy-store \
  bgruening/galaxy-stable /bin/true
```

Run a container (first time only).

```
docker run \
  --detach \
  -p 8080:80 -p 8021:21 -p 8022:22 -p 8800:8800 \
  --name pitagora-galaxy \
  --volumes-from galaxy-store \
  --privileged=true \
  -e GALAXY_CONFIG_ENABLE_BETA_MULLED_CONTAINERS=True \
  -e ENABLE_TTS_INSTALL=True \
  pitagora-galaxy
```

Connect to the container (if needed).

    docker exec -it galaxy /bin/bash

Stop the container.

    docker stop galaxy

Restart the container.

    docker start galaxy


## Workflows

* For the details of workflows, see our [wiki](http://wiki.pitagora-galaxy.org/wiki/index.php/Workflows).
