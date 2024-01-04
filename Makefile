m-up:
    migrate -path ./scheme -database 'postgres://postgres:qwerty@localhost:5436/postgres?sslmode=disable' up

m-down:
    migrate -path ./scheme -database 'postgres://postgres:qwerty@localhost:5436/postgres?sslmode=disable' down