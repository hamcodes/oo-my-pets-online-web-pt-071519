class Owner
  attr_accessor :cats, :dogs
  attr_reader :name, :species
  @@all = []
  def initialize(name)
    @name = name 
    @species = "human"
    @cats = []
    @dogs = []
    @@all << self
  end
  def name
    @name
  end
  
  def say_species
    "I am a #{@species}."
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
  
  def cats
    @cats
  end
  
  def dogs
    @dogs
  end
    
  def buy_cat(cat)
    Cat.new(cat, self) 
  end
  
    def buy_dog(dog)
    Dog.new(dog, self) 
  end
  
  def walk_dogs
    @dogs.each {|dog| dog.mood = "happy"}
  end

  def feed_cats
    @cats.each {|cat| cat.mood = "happy"
    }
  end
  
def sell_pets
end
    
    
  
end