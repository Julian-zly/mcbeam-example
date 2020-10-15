module github.com/wolfplus2048/mcbeam-example

go 1.14

require (
	gitee.com/microbeam/mcbeam-mind-mahjong v0.0.0-20200917122642-288fbda3f32e
	github.com/golang/protobuf v1.4.2
	github.com/google/uuid v1.1.2
	github.com/looplab/fsm v0.2.0
	github.com/micro/go-micro/v2 v2.9.1
	github.com/micro/go-plugins/store/redis/v2 v2.9.1
	github.com/wolfplus2048/mcbeam-plus v0.1.1
	google.golang.org/protobuf v1.25.0
)
replace (
	google.golang.org/grpc => google.golang.org/grpc v1.26.0
)
