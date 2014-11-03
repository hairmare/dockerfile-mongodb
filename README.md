# MongoDB on Docker

[Gentoo](https://www.gentoo.org/) based [MongoDB](https://www.mongodb.org/) server on [docker](https://www.docker.com/).

## Usage

````
docker run --name mongodb-data hairmare/mongodb echo "Creating volumes"
docker run --name mongodb --volumes-from mongodb-server-data -d -p 28017:28017 hairmare/mongodb
````

Ports 27017 and 28017 are both ``EXPOSE``d so you may ``--link`` to the mongodb service.
