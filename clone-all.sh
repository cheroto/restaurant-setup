#!/bin/bash

REPOSITORIES=(
	favorite-restaurants
	restaurantsAPI
)
for REPOSITORY in ${REPOSITORIES[*]}
do
	echo ===========================================
	echo Cloning Repository: $REPOSITORY
	echo ===========================================
	REPO_URL=https://github.com/cheroto/$REPOSITORY.git
	git clone $REPO_URL $REPOSITORY
done