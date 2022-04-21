# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# user = User.create({name: "Evelyn", email: "Evelyn@example.com"})
# user = User.create({name: "Sam", email: "Sam@example.com"})
# user = User.create({name: "Aaron", email: "Aaron@example.com"})
experience = Experience.create({user_id: 1, type: "Job", org_or_institution: "UNFI", description: "Managed the buying portfolio of and day-to-day communications for two buyers in the purchasing department at a major natural and organic food distribution company.", title: "Purchasing Associate", dates: "2011-2012", location: "NH", misc: "data analysis and visualization responsibilities"})
experience.save