class Pokemon 
  attr_accessor :id, :name, :type, :db
  
  @@all = []

def initialize(id:, name:, type:, db:)
  @id = id 
  @name = name 
  @type = type
  @db = db
  @@all << self
  
end 

def self.save(name, type, db)
  db.execute("INSERT INTO pokemon(name, type) VALUES (?, ?)", name, type)
  
def self.find(id,db)
  @db.detect do |pokemon|
    self.new(pokemon.id,name,type,pokemon.db) if pokemon.id == id
  end 
  
end 

end 
  
end 

