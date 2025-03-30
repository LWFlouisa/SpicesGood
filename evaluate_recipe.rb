require "naive_bayes"

spices = NaiveBayes.new(:good, :bad)

## Recipes

# Good Recipes
spices.train(:good, "Tumeric 1 1/2  tablespoon 
Cumin 2 1/2  teaspoon 
Cayenne 2  tablespoon 
Chilly powder 1/4  shotglass 
Crushed peppers 1 1/4th  shotglass 
Garlic powder 2  shotglass 
Onion powder 1 1/4th  tablespoon 
Cocao powder 2 1/2  teaspoon 
Cocao powder 2 1/8  tablespoon", "word")

spices.train(:good, "Tumeric 1 1/8  cup 
Cumin 2 1/8  shotglass 
Cayenne 2 1/2  cup 
Chilly powder 3  tablespoon 
Crushed peppers 1/2  tablespoon 
Garlic powder 2 1/4th  teaspoon 
Onion powder 1/2  teaspoon 
Cocao powder 2 1/8  shotglass 
Cocao powder 2 1/4th  tablespoon", "word")

spices.train(:good, "Tumeric 2 1/4th  shotglass 
Cumin 1 1/2  tablespoon 
Cayenne 1 1/4th  shotglass 
Chilly powder 2 1/4th  teaspoon 
Crushed peppers 1  teaspoon 
Garlic powder 1 1/4th  cup 
Onion powder 1/4  teaspoon 
Cocao powder 2 1/2  teaspoon 
Cocao powder 2  tablespoon", "word")

# Bad Recipes
spices.train(:bad,  "Tumeric 1  tablespoon 
Cumin 2 1/4th  tablespoon 
Cayenne 2 1/2  cup 
Chilly powder 1/8  cup 
Crushed peppers 3  cup 
Garlic powder 1/8  teaspoon 
Onion powder 3  teaspoon 
Cocao powder 1/8  shotglass 
Cocao powder 1 1/2  shotglass", "word")

recipe = File.readlines("_input/recipe.txt")

print "This spice mix is #{spices.classify(recipe)}"

classification = spices.classify(recipe)

result = classification[0].to_s

if    result == "bad";  puts " Throw it out."
elsif result == "good"; puts " Keep it."
end
