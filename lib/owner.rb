require "pry"
require_relative 'dog.rb'
require_relative 'fish.rb'
require_relative 'cat.rb'
class Owner
  attr_accessor :name, :pets
  attr_reader :species
  attr_writer


  def initialize(name, species=("human"))
    @name = name
    @species = species
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}

  end

  @@all = []

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all

    @@all.clear

  end


  def say_species
    return "I am a #{self.species}."
  end

  def buy_fish(name)
    name = Fish.new(name)
    self.pets[:fishes]<<name
  end

  def buy_cat(name)
    name = Cat.new(name)
    self.pets[:cats]<<name
  end

  def buy_dog(name)
    name = Dog.new(name)
    self.pets[:dogs]<<name
  end

  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
      pets.each do |species, pet|
        pet.each do |animal|
          animal.mood = "nervous"
        end
      pet.clear
    end
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
















end
