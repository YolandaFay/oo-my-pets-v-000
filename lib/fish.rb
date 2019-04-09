class Fish
  attr_accessor :mood #can change its mood
  attr_reader :name #can't change its name 
  
  
  def initialize(name)
    @name = name 
    @mood = "nervous"
  end
  
  
end