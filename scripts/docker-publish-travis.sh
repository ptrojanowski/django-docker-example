docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD

docker build -f ./compose/production/django/Dockerfile . -t django-docker-example:$DOCKER_TAG --no-cache

docker tag django-docker-example:$DOCKER_TAG $DOCKER_USERNAME/django-docker-example:$DOCKER_TAG

docker push $DOCKER_USERNAME/django-docker-example:$DOCKER_TAG