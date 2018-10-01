To make this up and running, the entrypoint script is run-cluster.sh
You need to provide 3 arguments: `slave`, `sentinel` and `master`

To work with 3 slaves, 3 sentinels and 3 masters simply call it as:
    `$ sh ./run-cluster.sh --slave=3 --sentinel=3 --master=3`

Tips:

Kill all docker images: `$  docker kill $(docker ps -a -q )`
Kill all running docker-compose instances: `$ docker-compose down`