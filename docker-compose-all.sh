#!/bin/bash

STARTINGPATH=${PWD}
REPOSITORIES=(
	favorite-restaurants
	restaurantsAPI
)
for REPOSITORY in ${REPOSITORIES[*]}
do
	echo ===========================================
	echo Provisioning local docker container for: $REPOSITORY
	echo ===========================================
	cd $REPOSITORY
	docker-compose up -d
	cd $STARTINGPATH
done