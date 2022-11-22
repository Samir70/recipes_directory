class Recipe
    def initialize(hash)
        @id = hash["id"].to_i
        @name_of_meal = hash["name_of_meal"]
        @average_cooking_time = hash["average_cooking_time"].to_i
        @rating = hash["rating"].to_i
    end
    def to_s
        return "#{@name_of_meal} takes #{@average_cooking_time} minutes to cook and is rated #{@rating}"
    end
    attr_accessor :id, :name_of_meal, :average_cooking_time, :rating
end