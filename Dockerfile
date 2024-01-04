FROM golang:1.21 as build

WORKDIR /app

COPY . .

RUN go mod download

RUN go build -o auth cmd/auth/main.go

FROM gcr.io/distroless/base-debian12

COPY --from=build app/auth .
COPY scheme ./scheme
COPY configs ./configs

EXPOSE 8000

CMD ["/auth"]
