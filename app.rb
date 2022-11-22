require_relative "lib/database_connection"
require_relative "lib/recipe_repository"

# We need to give the database name to the method `connect`.
DatabaseConnection.connect("recipes_directory")

repo = RecipeRepository.new


# Print out each record from the result set .
repo.all.each do |record|
  puts record
end
