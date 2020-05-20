#!/bin/bash

STARTINGPATH=${PWD}
REPOSITORIES=(
	favorite-restaurants
	restaurantsAPI
)
for REPOSITORY in ${REPOSITORIES[*]}
do
	echo ===========================================
	echo Building local docker image: $REPOSITORY
	echo ===========================================
	cd $REPOSITORY
	docker build -t ${REPOSITORY,,} .
	cd $STARTINGPATH
done