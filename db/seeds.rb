# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

worker = Worker.create(
	first_name:'Yalan',
	last_name:'Sri',
	email:'yalan@gmail.com'
)

20.times do |i|
  puts "Creating Worker #{i+1}"
  Worker.create(
	 first_name:"Worker#{i+1}",
  	 last_name:"Lname#{i+1}",
  	 email:"Worker#{i+1}@gmail.com"
  )
end