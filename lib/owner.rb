class Owner
  attr_accessor :name, :pets
  attr_reader :species 
  
  OWNERS = []
  
  @pets = {}
  @@all = []

  def initialize 
    
  end
  
  ## CLASS METHODS ##
   
  def self.all 
    @@all 
  end
      
      
  def self.count 
    @@all.size  
  end
      
      
  def self.reset_all
    OWNERS = []
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
  
  def species   #initializes with a species
    
  end
  
  
  def say_species   #can say its species
    
  end
  
  
  def name    #can have a name
    
  end
  
  
  def pets    #is initialized with a pets attribute as a hash with 3 keys
    
  end
  
  
  def buy_fish(name)    #can buy a fish that is an instance of the Fish class
    Fish.new(name)    
  end
  
  
  def buy_cat(name)     #can buy a cat that is an instance of the Cat class
    Cat.new(name)
  end
  
  
  def buy_dog(name)     #can buy a dog that is an instance of the Dog class
    Dog.new(name)
  end
  
  
  def walk_dogs
    
  end
  
  
  def play_with_cats
    
  end
  
  
  def feed_fish
    
  end
  
  
  def sell_pets
    
  end
  
  
  def list_pets
    
  end
  
  
  
end