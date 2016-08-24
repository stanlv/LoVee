# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.second)

Category.create(name: "Romantic", kisses: 200)
Category.create(name: "Adventure", kisses: 100)
Category.create(name: "Spicy", kisses: 300)

Challenge.create(title: "Challenge 1"description: "This is what you have to do",gender: "male", deadline: 10, category_id: Category.first.id)
Challenge.create(title: "Challenge 2", description: "This is what you have to do",gender: "male", deadline: 10, category_id: Category.first.id)
Challenge.create(title: "Challenge 3", description: "This is what you have to do",gender: "male", deadline: 10, category_id: Category.first.id)
Challenge.create(title: "Challenge 4", description: "This is what you have to do",gender: "male", deadline: 10, category_id: Category.first.id)
Challenge.create(title: "Callenge 16", description: "This is what you have to do",gender: "male", deadline: 10,  category_id: Category.first.id)
Challenge.create(title: "Challenge 17", description: "This is what you have to do",gender: "both", deadline: 10, category_id: Category.first.id)
Challenge.create(title: " challenge 5", description: "This is what you have to do",gender: "male", deadline: 10, category_id: Category.first.id)
Challenge.create(title: " challenge 6", description: "This is what you have to do",gender: "male", deadline: 10,category_id: Category.first.id)
Challenge.create(title: " challenge 7", description: "This is what you have to do",gender: "male", deadline: 10,category_id: Category.first.id)
Challenge.create(title: " challenge 8", description: "This is what you have to do",gender: "male", deadline: 10, category_id: Category.first.id)
Challenge.create(title: " challenge 9", description: "This is what you have to do",gender: "female", deadline: 10, category_id: Category.first.id)
Challenge.create(title: " challenge 10", description: "This is what you have to do",gender: "both", deadline: 10, category_id: Category.first.id)
Challenge.create(title: " challenge 11", description: "This is what you have to do",gender: "female", deadline: 10,category_id: Category.first.id)
Challenge.create(title: " challenge 12", description: "This is what you have to do",gender: "female", deadline: 10,category_id: Category.first.id)
Challenge.create(title: " challenge 13", description: "This is what you have to do",gender: "female", deadline: 10, category_id: Category.first.id)
Challenge.create(title: " challenge 14", description: "This is what you have to do",gender: "female", deadline: 10,  category_id: Category.first.id)
Challenge.create(title: " challenge 15", description: "This is what you have to do",gender: "female", deadline: 10, category_id: Category.first.id)


Challenge.create(title: "Challenge 1"description: "This is what you have to do",gender: "male", deadline: 10, category_id: Category.second.id)
Challenge.create(title: "Challenge 2", description: "This is what you have to do",gender: "male", deadline: 10, category_id: Category.second.id)
Challenge.create(title: "Challenge 3", description: "This is what you have to do",gender: "male", deadline: 10, category_id: Category.second.id)
Challenge.create(title: "Challenge 4", description: "This is what you have to do",gender: "male", deadline: 10, category_id: Category.second.id)
Challenge.create(title: "Callenge 16", description: "This is what you have to do",gender: "male", deadline: 10,  category_id: Category.second.id)
Challenge.create(title: "Challenge 17", description: "This is what you have to do",gender: "both", deadline: 10, category_id: Category.second.id)
Challenge.create(title: " challenge 5", description: "This is what you have to do",gender: "male", deadline: 10, category_id: Category.second.id)
Challenge.create(title: " challenge 6", description: "This is what you have to do",gender: "male", deadline: 10,category_id: Category.second.id)
Challenge.create(title: " challenge 7", description: "This is what you have to do",gender: "male", deadline: 10,category_id: Category.second.id)
Challenge.create(title: " challenge 8", description: "This is what you have to do",gender: "male", deadline: 10, category_id: Category.second.id)
Challenge.create(title: " challenge 9", description: "This is what you have to do",gender: "female", deadline: 10, category_id: Category.second.id)
Challenge.create(title: " challenge 10", description: "This is what you have to do",gender: "both", deadline: 10, category_id: Category.second.id)
Challenge.create(title: " challenge 11", description: "This is what you have to do",gender: "female", deadline: 10,category_id: Category.second.id)
Challenge.create(title: " challenge 12", description: "This is what you have to do",gender: "female", deadline: 10,category_id: Category.second.id)
Challenge.create(title: " challenge 13", description: "This is what you have to do",gender: "female", deadline: 10, category_id: Category.second.id)
Challenge.create(title: " challenge 14", description: "This is what you have to do",gender: "female", deadline: 10,  category_id: Category.second.id)
Challenge.create(title: " challenge 15", description: "This is what you have to do",gender: "female", deadline: 10, category_id: Category.second.id)


Challenge.create(title: "Challenge 1"description: "This is what you have to do",gender: "male", deadline: 10, category_id: Category.last.id)
Challenge.create(title: "Challenge 2", description: "This is what you have to do",gender: "male", deadline: 10, category_id: Category.last.id)
Challenge.create(title: "Challenge 3", description: "This is what you have to do",gender: "male", deadline: 10, category_id: Category.last.id)
Challenge.create(title: "Challenge 4", description: "This is what you have to do",gender: "male", deadline: 10, category_id: Category.last.id)
Challenge.create(title: "Callenge 16", description: "This is what you have to do",gender: "male", deadline: 10,  category_id: Category.last.id)
Challenge.create(title: "Challenge 17", description: "This is what you have to do",gender: "both", deadline: 10, category_id: Category.last.id)
Challenge.create(title: " challenge 5", description: "This is what you have to do",gender: "male", deadline: 10, category_id: Category.last.id)
Challenge.create(title: " challenge 6", description: "This is what you have to do",gender: "male", deadline: 10,category_id: Category.last.id)
Challenge.create(title: " challenge 7", description: "This is what you have to do",gender: "male", deadline: 10,category_id: Category.last.id)
Challenge.create(title: " challenge 8", description: "This is what you have to do",gender: "male", deadline: 10, category_id: Category.last.id)
Challenge.create(title: " challenge 9", description: "This is what you have to do",gender: "female", deadline: 10, category_id: Category.last.id)
Challenge.create(title: " challenge 10", description: "This is what you have to do",gender: "both", deadline: 10, category_id: Category.last.id)
Challenge.create(title: " challenge 11", description: "This is what you have to do",gender: "female", deadline: 10,category_id: Category.last.id)
Challenge.create(title: " challenge 12", description: "This is what you have to do",gender: "female", deadline: 10,category_id: Category.last.id)
Challenge.create(title: " challenge 13", description: "This is what you have to do",gender: "female", deadline: 10, category_id: Category.last.id)
Challenge.create(title: " challenge 14", description: "This is what you have to do",gender: "female", deadline: 10,  category_id: Category.last.id)
Challenge.create(title: " challenge 15", description: "This is what you have to do",gender: "female", deadline: 10, category_id: Category.last.id)
