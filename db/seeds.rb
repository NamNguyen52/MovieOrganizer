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
  	password: "FirstUserPassword",
    name: "Nam"
  },
  {
  	username: "SecondUser",
  	password: "SecondUserPassword",
    name: "Bryan"
  }

]);

movies = Movie.create([
  {
  	title: "The Holy Mountain",
  	director: "Alejandro Jorodowsky"
  },
  {
  	title: "Amer",
  	director: "Helene Cattet, Bruno Forzani"
  }

]);


usermovies = Usermovie.create([
  {
    user: users[0],
    movie: movies[0],
    watch: false
  },
  {
    user: users[1],
    movie: movies[1],
    watch: false
  }
]);

