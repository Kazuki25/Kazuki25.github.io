# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

csv_data = CSV.read('db/task.csv', headers: true)
csv_data.each do |data|
    Task.create!(data.to_hash)
end

csv_data2 = CSV.read('db/kadai.csv', headers: true)
csv_data2.each do |data|
    Task.create!(data.to_hash)
end