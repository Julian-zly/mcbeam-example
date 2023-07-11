# mcbeam-plus-example
[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2FJulian-zly%2Fmcbeam-example.svg?type=shield)](https://app.fossa.com/projects/git%2Bgithub.com%2FJulian-zly%2Fmcbeam-example?ref=badge_shield)


### Installing
clone the app
```
git clone git@github.com:wolfplus2048/mcbeam-example.git
```

### Running the example
run nats, etcd, gate
```
docker-compose up -d
mcbeam --registry=etcd gate
```
generate proto
```
make proto
```
run server
```
go run auth_srv/main.go --registry=etcd
go run mgr_srv/main.go --registry=etcd
go run room_srv/main.go --registry=etcd
```
run cocos client


## License
[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2FJulian-zly%2Fmcbeam-example.svg?type=large)](https://app.fossa.com/projects/git%2Bgithub.com%2FJulian-zly%2Fmcbeam-example?ref=badge_large)