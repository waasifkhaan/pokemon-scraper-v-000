class Pokemon 
  attr_accessor :id, :name, :type, :db
  
  @@all = []

def initialize(id:, name:, type:, db:)
  @id = id 
  @name = name 
  @type = type
  @db = db
  
end 

def self.save(id, name, type, db)
  @db.execute("INSERT INTO #{db} (id, name,type ) VALUES (,@type))
  @@all << self.new
end 
  
end 

