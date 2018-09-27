class Recipe

  attr_accessor
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_popular
    
  end

  def recipe_cards
    RecipeCard.all.select do |card|
      card.recipe == self
    end
  end

  def users
    recipe_cards.map do |card|
      card.user
    end
  end

  def ingredients

  end

  def allergens

  end

  def add_ingredients

  end

end
