class Owner
  attr_accessor :name, :pets
  attr_reader :species 
  
  @@all = []

  def initialize(species)
    @species = species
    @@all << self 
    @pets = {:fish => [], :dogs => [], :cats => []}
  end
  
  ## CLASS METHODS ##
   
  def self.all 
    @@all
  end
      
      
  def self.count 
    @@all.size  
  end
      
      
  def self.reset_all
    @@all.clear 
  end

  ## ALTERNATE class << self SYNTAX - NOT WORKING ##

 #Owner << self 
  
      #def all 
        #@@all 
      #end
      
      
      #def count 
        #@@all.size  
      #end
      
      
      #def reset_all
        #@@all = []
      #end
 #end
  
  ## INSTANCE METHODS ##
  
  def species(species)   #initializes with a species
    @species = species
  end
  
  
  def say_species   #can say its species
    "I am a #{species}."
  end
  
  
  def name    #can have a name
    
  end
  
  
  def pets    #is initialized with a pets attribute as a hash with 3 keys
    
  end
  
  
  def buy_fish(name)    #can buy a fish that is an instance of the Fish class
    pets[:fish] << Fish.new(name)    
  end
  
  
  def buy_cat(name)     #can buy a cat that is an instance of the Cat class
    pets[:cats] << Cat.new(name)
  end
  
  
  def buy_dog(name)     #can buy a dog that is an instance of the Dog class
    pets[:dogs] << Dog.new(name)
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
    pets[:fish].each do |fish|
      fish.mood = "happy"
    end
  end
  
  
  def sell_pets
    pets.each do |species, animals|
      animals.each do |animal|
        animal.mood = "nervous"
      end
      animals.clear
    end
  end
  
  
  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
  
  
  
end