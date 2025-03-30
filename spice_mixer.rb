# Get the date.
#system("date > _date/date.txt")

# Immutables
#date             = File.read("_date/date.txt").strip
#date_title       = date.tr " ", "_"

spice_type = [
  "Tumeric",
  "Cumin",
  "Cayenne",
  "Chilly powder",
  "Crushed peppers",
  "Garlic powder",
  "Onion powder",
  "Cocao powder",
  "Cinnamon",
]

total_spices = spice_type.size.to_i
spice_interval = 0

spoon_size = [  "1/8 ",     "1/4 ",   "1/2 ", "1 ",
                "1 1/8 ", "1 1/4th ", "1 1/2 ", "2 ", 
                "2 1/8 ", "2 1/4th ", "2 1/2 ", "3 "]

spoon_type = ["teaspoon ", "tablespoon ", "cup ", "shotglass "]

# Spice increment should be a seperate measurement.
spice_increment = spoon_type.sample

# If the amount of spice increment is to much, abort the task.
if spice_increment == "tablespoon"
  puts "To Hot! Redoing recipe without Thai chillies or crushed peppers."

  tumeric        = "#{spice_type[0]} #{spoon_size.sample} #{spoon_type.sample}"
  cumin          = "#{spice_type[1]} #{spoon_size.sample} #{spoon_type.sample}"
  cayenne        = "#{spice_type[2]} #{spoon_size.sample} #{spoon_type.sample}"
  garlicpowder   = "#{spice_type[5]} #{spoon_size.sample} #{spoon_type.sample}"
  onionpowder    = "#{spice_type[6]} #{spoon_size.sample} #{spoon_type.sample}"
  cocaopowder    = "#{spice_type[7]} #{spoon_size.sample} #{spoon_type.sample}"
  cinnamon       = "#{spice_type[7]} #{spoon_size.sample} #{spoon_type.sample}"
else
  tumeric        = "#{spice_type[0]} #{spoon_size.sample} #{spoon_type.sample}"
  cumin          = "#{spice_type[1]} #{spoon_size.sample} #{spoon_type.sample}"
  cayenne        = "#{spice_type[2]} #{spoon_size.sample} #{spoon_type.sample}"
  chillypowder   = "#{spice_type[3]} #{spoon_size.sample} #{spice_increment}"
  crushedpeppers = "#{spice_type[4]} #{spoon_size.sample} #{spice_increment}"
  garlicpowder   = "#{spice_type[5]} #{spoon_size.sample} #{spoon_type.sample}"
  onionpowder    = "#{spice_type[6]} #{spoon_size.sample} #{spoon_type.sample}"
  cocaopowder    = "#{spice_type[7]} #{spoon_size.sample} #{spoon_type.sample}"
  cinnamon       = "#{spice_type[7]} #{spoon_size.sample} #{spoon_type.sample}"
end

# Checks to make sure chilly powder isn't to much.


# Generate random spice mixture.
open("_input/recipe.txt", "w") { |f|
  #puts "## #{date_title}"
  #puts "## #{spice_type[spice_interval]} Mix"

  f.puts tumeric
  #puts "\n"
  f.puts cumin
  #puts "\n"
  f.puts cayenne
  #puts "\n"
  f.puts chillypowder
  #puts "\n"
  f.puts crushedpeppers
  #puts "\n"
  f.puts garlicpowder
  #puts "\n"
  f.puts onionpowder
  #puts "\n"
  f.puts cocaopowder
  #puts "\n"
  f.puts cinnamon
  #puts " "
}
