FROM golang:1.18-buster AS builder
WORKDIR /app
COPY . .
RUN go mod download
RUN go build . 
EXPOSE 8080
ENTRYPOINT ["./hello"]