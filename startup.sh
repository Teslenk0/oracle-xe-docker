#!/bin/bash
# Uncomment the following statement for debug purposes
#set -xe

ADMIN_PASS="PassAdm123"

# If the container name is being generated dinamically
# you may have to modify this to use the container ID 
# (you can read it from the "docker ps" command output)
CONTAINER_NAME="oracle_ort"

main() {

    # Build and run container dettached
    docker compose up --build --detach

    # Change admin password
    docker exec "${CONTAINER_NAME}" ./setPassword.sh "${ADMIN_PASS}"

    echo "================================";
    echo "ORACLE PASSWORD FOR SYS, SYSTEM AND PDBADMIN: ${ADMIN_PASS}";
    echo "================================";

    # Attach to the standard output of the container
    docker logs "${CONTAINER_NAME}" --follow
}

main