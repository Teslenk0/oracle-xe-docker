# Running Oracle Express DB using Docker

**Note that this process may not work in Windows machines**

**This guide is oriented for MacOS / Linux users**

## Requirements

In order to run our free Oracle database server in a container, first we need to have our container manager / orchestrator installed, and as mentioned in the title, we are going to use Docker (along with Docker-Compose)

To install Docker, you can follow their official documentation (make sure to select the proper os (linux, macos, etc) and architecture (arm64, amd64))

https://docs.docker.com/get-docker/

## Bootstrapping Oracle DB Server
1. Give execution permissions to the `startup.sh` script running:
    ```bash
    chmod +x ./startup.sh
    ```
2. Execute the script
    ```bash
    sh ./startup.sh
    # or
    ./startup.sh
    ```
    After executing the script, you should see the build process start, it may take some time since the docker image for the db server is big (arount 3GB). 
    When the server is ready to accept connections, you will see a message (like the one described below) in the logs.
    ```bash
    #########################
    DATABASE IS READY TO USE!
    #########################
    ```  

3. Connect to the DB server using a client (like `Oracle SQL Developer`). The default connection parameters are these:
    ```bash
    # USER => SYS | 
    # Password => PassAdm123
    # Server Port (OUTSIDE of the container) => 15210
    # Server Port (INSIDE of the container) => 1521
    ```

## General notes

### Data storage
Since the DB server runs in a Docker container, a docker volume is created to persist db data. That volume should be mapped to the folder in the host machine (probably your PC) `/home/$USER/.ort_oracle_data`.

### Container running in the background
After executing the `startup.sh` script, the container will keep running until you kill it running the following command: `docker kill oracle_ort`.

### Validate that the container is running
To validate that the container is running, you can run `docker ps | grep oracle_ort`.