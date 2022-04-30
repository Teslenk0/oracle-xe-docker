#!/usr/bin/env bash
# Variables used for the script

CMG_COMMAND=docker
DKR_IMAGE="gvenzl/oracle-xe"
DKR_HOST_PORT=$1
DKR_CNT_NAME=$2
DKR_DATA_PATH=dbcxe-$DKR_CNT_NAME-dvol
DKR_ORA_USER_APP="ORTSYSDBA"
DKR_ORA_PW="PassAdm123"
DKR_ORA_PW_APP="PassAdm123"

if [ -z "$DKR_HOST_PORT" ]; then
  echo "You must provide docker host port"
  exit 1
fi


if [ -z "$DKR_CNT_NAME" ]; then
  echo "You must provide dockercontainer name"
  exit 1
fi


echo "Docker Image ............................ :'$DKR_IMAGE'"
echo "Database (SYS AND SYSTEM) User Password . :'$DKR_ORA_PW'"
echo "Database Application User ............... :'$DKR_ORA_USER_APP'"
echo "Database Application User Password ...... :'$DKR_ORA_PW_APP'"
echo "Docker Volume Name ...................... :'$DKR_DATA_PATH'"
echo "Docker Host Port ........................ :'$DKR_HOST_PORT'"
echo "Docker Container Name ................... :'$DKR_CNT_NAME'"


if docker ps -a --format '{{.Names}}' | grep -Eq "^${DKR_CNT_NAME}\$"; then
   $CMG_COMMAND start "${DKR_CNT_NAME}"
else
  $CMG_COMMAND run --name $DKR_CNT_NAME \
    -p $DKR_HOST_PORT:1521 \
    -e "ORACLE_PASSWORD=$DKR_ORA_PW" \
    -e "APP_USER=$DKR_ORA_USER_APP" \
    -e "APP_USER_PASSWORD=$DKR_ORA_PW_APP" \
    -v $DKR_DATA_PATH:/opt/oracle/oradata \
    -d $DKR_IMAGE
fi

echo "Waiting for container '$DKR_CNT_NAME' to start ... " 
sleep 10

echo "Docker Container '$DKR_CNT_NAME' has been started on port '$DKR_HOST_PORT'"

$CMG_COMMAND logs  $DKR_CNT_NAME --follow