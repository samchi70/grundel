# syntax=docker/dockerfile:1

FROM golang:alpine
RUN mkdir /app
ADD . /app/
WORKDIR /app
RUN go build -o main ./src/main.go
CMD [ "/app/main"]
