require 'open-uri'

Ingredient.destroy_all

ingredients_url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
ingredients_list = JSON.parse(open(ingredients_url).read)
puts "Adding ingredients to DB..."
ingredients_list["drinks"].each do |ingredient|
  new_ingredient = Ingredient.create(name: ingredient["strIngredient1"])
  puts "#{new_ingredient.name} added :tropical_drink:"
end

file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
cocktail = Cocktail.new(name: 'TEST COCKTAIL WITH IMAGE')
cocktail.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')



