require 'pry'

class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{self.species}."
  end


  def buy_fish(name)
    pet_fish = Fish.new(name)
    @pets[:fishes] << pet_fish
  end

  def buy_cat(name)
    pet_cat = Cat.new(name)
    @pets[:cats] << pet_cat
  end 
  
end
