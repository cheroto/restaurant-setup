#!/bin/bash

STARTINGPATH=${PWD}
REPOSITORIES=(
	favorite-restaurants
	restaurantsAPI
)
for REPOSITORY in ${REPOSITORIES[*]}
do
	echo =========================================================
	echo Pulling latest changes from Repository: $REPOSITORY
	echo =========================================================
	cd $REPOSITORY
	git pull
	cd $STARTINGPATH
done