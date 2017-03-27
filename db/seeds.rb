# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
prod = {:"степлер"=>10, :"точилка"=>5, :"антистеплер"=>20, :"дырокол"=>30}
prod.each do |key,value|
  Product.create(name:"#{key}",price:"#{value}")
end