sudo docker run -it -p 5080:5080 -p 6080:6080 -p 8080:8080 \
  -p 9080:9080 -p 8000:8000 -v ~/Documents/dgraph:/dgraph --name dgraph \
  dgraph/dgraph:v20.03.0 dgraph zero


# In another terminal, now run Dgraph alpha
docker exec -it dgraph dgraph alpha --lru_mb 2048 --zero localhost:5080 --whitelist 0.0.0.0/0

# And in another, run ratel (Dgraph UI)
docker exec -it dgraph dgraph-ratel