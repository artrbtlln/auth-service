package repository

import (
	"github.com/jmoiron/sqlx"
	"todo"
)

type Authorization interface {
	CreateUser(user auth_service.User) (int, error)
	GetUser(username, password string) (auth_service.User, error)
}
type Repository struct {
	Authorization
}

func NewRepository(db *sqlx.DB) *Repository {
	return &Repository{
		Authorization: NewAuthPostgres(db),
	}

}
