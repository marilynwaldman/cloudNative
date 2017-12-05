FROM golang:1.7.3-alpine

ENV SOURCES /go/src/github.com/user/cloud-native-go/


COPY . ${SOURCES}

RUN go get github.com/user/cloud-native-go/api


RUN cd ${SOURCES} && CGO_ENABLED=0 go install -a

ENTRYPOINT cloud-native-go
EXPOSE 8080