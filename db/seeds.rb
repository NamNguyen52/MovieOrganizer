# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Movie.destroy_all

users = User.create([
  {
  	username: "FirstUser",
  	password: "FirstUserPassword"
  },
  {
  	username: "SecondUser",
  	password: "SecondUserPassword"
  }

]);

movies = Movie.create([
  {
  	title: "The Holy Mountain",
  	director: "Alejandro Jorodowsky",

  	user: users[0]
  },
  {
  	title: "Amer",
  	director: "Helene Cattet, Bruno Forzani",

  	user: users[1]
  }

]);