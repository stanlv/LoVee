# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create(name: "Romantic", coins: 200)
Category.create(name: "Adventure", coins: 100)

Challenge.create(title: "Romantic challenge 1", description: "This is what you have to do", deadline: 20, category_id: Category.first.id)
Challenge.create(title: "Romantic challenge 2", description: "This is what you have to do", deadline: 20, category_id: Category.first.id)
Challenge.create(title: "Romantic challenge 3", description: "This is what you have to do", deadline: 20,  category_id: Category.first.id)
Challenge.create(title: "Romantic challenge 4", description: "This is what you have to do", deadline: 20, category_id: Category.first.id)
Challenge.create(title: "Romantic challenge 5", description: "This is what you have to do", deadline: 20, category_id: Category.first.id)
Challenge.create(title: "Romantic challenge 6", description: "This is what you have to do", deadline: 20,category_id: Category.first.id)
Challenge.create(title: "Romantic challenge 7", description: "This is what you have to do", deadline: 20,category_id: Category.first.id)
Challenge.create(title: "Romantic challenge 8", description: "This is what you have to do", deadline: 20, category_id: Category.first.id)
Challenge.create(title: "Romantic challenge 9", description: "This is what you have to do", deadline: 20, category_id: Category.first.id)
Challenge.create(title: "Romantic challenge 10", description: "This is what you have to do", deadline: 20, category_id: Category.first.id)
Challenge.create(title: "Romantic challenge 11", description: "This is what you have to do", deadline: 20,category_id: Category.first.id)
Challenge.create(title: "Romantic challenge 12", description: "This is what you have to do", deadline: 20,category_id: Category.first.id)
Challenge.create(title: "Romantic challenge 13", description: "This is what you have to do", deadline: 20, category_id: Category.first.id)
Challenge.create(title: "Romantic challenge 14", description: "This is what you have to do", deadline: 20,  category_id: Category.first.id)
Challenge.create(title: "Romantic challenge 15", description: "This is what you have to do", deadline: 20, category_id: Category.first.id)

