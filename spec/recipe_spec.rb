require "recipe"

RSpec.describe Recipe do
    it "initialises with correct data" do
        recipe = Recipe.new({"id" => "1", "name_of_meal" => "Boiled Egg", "average_cooking_time" => "6", "rating" => "3"})
        expect(recipe.id).to eq 1
        expect(recipe.name_of_meal).to eq "Boiled Egg"
        expect(recipe.average_cooking_time).to eq 6
        expect(recipe.rating).to eq 3
    end
end