FROM golang:1.7.3-alpine

ENV SOURCES /go/src/github.com/user/cloud-native-go/
COPY . ${SOURCES}

WORKDIR ${SOURCES}
RUN go build ./microservice.go

CMD ["./microservice"]

EXPOSE 8080
