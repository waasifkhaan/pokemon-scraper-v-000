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
  @@all.each do |pokemon|
  self.new(id,pokemon.name,pokemon.type,db) if pokemon.id == id
end 
  
end 

end 
  
end 

