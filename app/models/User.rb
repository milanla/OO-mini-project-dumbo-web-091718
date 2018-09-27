class User

  attr_accessor :recipes, :allergens
  attr_reader :name

  @@all =[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipe_cards
    RecipeCard.all.select do |card|
      card.user == self
    end
  end

  def recipes
    recipe_cards.map do |card|
      card.recipe
    end
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(self, recipe, date, rating)
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  def allergens
    Allergen.all.select do |allergen|
      allergen.user == self
    end
  end

  def top_three_recipes
    self.recipe_cards.select do |recipe|

    binding.pry
    end

  end

  def most_recent_recipe

  end

end
