FROM golang:1.19.4-alpine
WORKDIR /src
COPY . /src
RUN go build .
CMD go run .