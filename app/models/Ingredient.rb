class Ingredient

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  # helper method how many times ingredient exist in allergen instance

  def count_allergens
    Allergen.all.select { |allergen| allergen.ingredient == self }.count

    binding.pry
  end

  def self.most_common_allergen
    Allergen.all.collect do |allergen|
      #allergen.name
      User.all.collect do |user|
      #  user.name
      # if allergen.ingredient.name.include?(Us)

    binding.pry
  end
    end

  end

end
