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

def self.save(id, name, type, db)
  self.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", @name, @type)

end 
  
end 

