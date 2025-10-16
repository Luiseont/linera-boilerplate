export LOCAL_UID=$(id -u)
export LOCAL_GID=$(id -g)

docker compose down "$@"