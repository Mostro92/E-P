# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Movie.create(title: "Herr der Ringe", rating: "35" , total_gross: 3 , description: "Super Film" , released_on: "2016-03-06" )
Movie.create(title: "Eis am stiel" , rating: "65" , total_gross: 3 , description: "Der Film ist doof" , released_on: "2017-02-09")
Movie.create(title: "Harry Potter" , rating: "95" , total_gross: 3 , description: "Ein richtig guter Film" , released_on: "2015-04-03")
