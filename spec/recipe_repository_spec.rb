require "recipe_repository"

def reset_recipes_table
  seed_sql = File.read("spec/seeds_recipes.sql")
  connection = PG.connect({ host: "127.0.0.1", dbname: "recipes_directory_test" })
  connection.exec(seed_sql)
end

RSpec.describe RecipeRepository do
  before(:each) do
    reset_recipes_table
  end
  describe "#all" do
    it "returns correct number of records in the recipes table" do
      repo = RecipeRepository.new
      recipes = repo.all
      expect(recipes.length).to eq 2
    end
    it "has the correct data for first record" do
      repo = RecipeRepository.new
      recipe = repo.all.first
      expect(recipe.id).to eq 1
      expect(recipe.name_of_meal).to eq "Boiled Egg"
      expect(recipe.average_cooking_time).to eq 6
      expect(recipe.rating).to eq 3
    end
  end

  describe "#find" do
    it "returns nil if no record with given id number" do
      repo = RecipeRepository.new
      recipe = repo.find(6)
      expect(recipe).to eq nil
    end
    it "returns record with given id number" do
      repo = RecipeRepository.new
      recipe = repo.find(2)
      expect(recipe.id).to eq 2
      expect(recipe.name_of_meal).to eq "Cheese Sandwich"
      expect(recipe.average_cooking_time).to eq 3
      expect(recipe.rating).to eq 1
    end
  end
end
