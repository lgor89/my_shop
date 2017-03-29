# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
prod = {:"Степлер"=>[10,"stepler.jpg"], :"Точилка"=>[5,"tochilka.jpg"], :"Антистеплер"=>[20,"antistep.jpg"],
        :"Дырокол"=>[30,"dirokol.jpg"],:"Стерка"=>[15,"stirka.jpg"],:"Пенал"=>[50,"penal.jpg"]}
prod.each do |key,value|
  Product.create(name:"#{key}",price:"#{value[0]}",image:"#{value[1]}")
end