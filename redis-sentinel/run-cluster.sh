sentinel=$ARGUMENTS['sentinel']
slave=$ARGUMENTS['slave']
master=$ARGUMENTS['master']
for i in "$@"
do
case $i in
    --slave=*)
    SLAVE="${i#*=}"
    ;;
    --master=*)
    MASTER="${i#*=}"
    ;;
    --sentinel=*)
    SENTINEL="${i#*=}"
    ;;
esac
done
docker-compose build &&
docker-compose up -d &&
docker-compose scale sentinel=$SENTINEL &&
docker-compose scale slave=$SLAVE
