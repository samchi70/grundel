# syntax=docker/dockerfile:1

FROM golang:alpine AS builder
WORKDIR /
COPY ./src/. ./
COPY ./static/. ./static
COPY ./templates/. ./templates
RUN go build -o ./app ./src/main.go
FROM alpine:3.20
COPY --from=builder /app /app
CMD [ "/app"]
