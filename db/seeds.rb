# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

kadais = CSV.read('db/kadai.csv', headers: true)
kadais.each do |data|
    Kadai.create!(data.to_hash)
end

tasks = CSV.read('db/task.csv', headers: true)
tasks.each do |data|
    Task.create!(data.to_hash)
end

categories = CSV.read('db/category.csv', headers: true)
categories.each do |data|
    Category.create!(data.to_hash)
end

statuses = CSV.read('db/status.csv', headers: true)
statuses.each do |data|
    Status.create!(data.to_hash)
end

levels = CSV.read('db/level.csv', headers: true)
levels.each do |data|
    Level.create!(data.to_hash)
end

people = CSV.read('db/person.csv', headers: true)
people.each do |data|
    Person.create!(data.to_hash)
end