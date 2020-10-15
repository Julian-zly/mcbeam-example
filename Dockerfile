FROM golang:latest AS build
ARG SSH_PRIVATE_KEY
ARG SRV
RUN mkdir -p /src
COPY     .   /src
#COPY     go.mod     /src
WORKDIR      /src
RUN  mkdir -p /root/.ssh/ \
    && echo "${SSH_PRIVATE_KEY}" >> /root/.ssh/id_rsa \
    && chmod 0600 /root/.ssh/id_rsa \
    && ssh-keyscan gitee.com >> /root/.ssh/known_hosts \
    && ssh -Tv git@gitee.com \
    && export GO111MODULE=on \
    && export GOPROXY=https://goproxy.io/ \
    && go env -w GOPRIVATE=gitee.com \
    && git config --global url."ssh://git@gitee.com".insteadOf "https://gitee.com" \
    && go build  -o server github.com/wolfplus2048/mcbeam-example/"${SRV}"


CMD /src/server
