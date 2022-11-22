require_relative 'recipe'

class RecipeRepository
  def all
    # return all records as an array of Recipe objects
    sql = "SELECT * FROM recipes"
    return DatabaseConnection.exec_params(sql, []).map { |el| Recipe.new(el) }
  end

  def find(id)
    # given an id number, it returns the record with that id (as a Recipe object)
    sql = "SELECT * FROM recipes WHERE id = $1"
    return DatabaseConnection.exec_params(sql, [id]).map { |el| Recipe.new(el) }[0]
  end
end
