require "json"
require "open-uri"

# # TODO: Write a seed to insert 10 posts in the database fetched from the Hacker News API.
Ingredient.destroy_all
data = open("http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list").read
# puts data
# puts data
# ingredients = []
extract = JSON.parse(data)
ingredients = []
extract["drinks"].each { |x| Ingredient.create!(name:x["strIngredient1"]) }
# puts ingredients[:drinks]
# p response
# ingredients.each do |c|
#   # p h.each { |x| p x }
#   # p test["title"]
#   # p test["url"]
#   ingredient = Ingredient.new(name: c[1])
#
