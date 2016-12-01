# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# create teh users
User.create(
  [
    { name: "José", email: "jose@email.com", password: "12345678" },
    { name: "Paulo", email: "paulo@email.com", password: "12345678" },
    { name: "Pedro", email: "pedro@email.com", password: "12345678" },
    { name: "Vera", email: "vera@email.com", password: "12345678" },
    { name: "João", email: "joao@email.com", password: "12345678" },
    { name: "Josy", email: "josy@email.com", password: "12345678" },
    { name: "Roberta", email: "beta@email.com", password: "12345678" },
    { name: "Carla", email: "carla@email.com", password: "12345678" },
    { name: "Bruno", email: "bruno@email.com", password: "12345678" },
    { name: "Carlos", email: "carlos@email.com", password: "12345678" },
  ]
)

Admin.create(
  name: "Admin",
  email: "admin@email.com",
  password: "12345678"
)
