class Ingredient
  attr_reader :name, :weight

  def initialize(name, weight)
    @name = name
    @weight = weight.to_f
  end

  def self.create_from_grams(name, weight)
    weight = weight * 0.001

    Ingredient.new(name, weight)
  end
end
