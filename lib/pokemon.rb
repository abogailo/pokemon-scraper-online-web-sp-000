class Pokemon
<<<<<<< HEAD

 attr_accessor :id, :name, :type, :db, :hp

   def initialize(name:, type:, id:, db:, hp: nil)
    @name = name
    @type = type
    @id = id
    @hp = hp
    @db = db
  end

   def self.save(name, type, db)
    db.execute("INSERT INTO pokemon(name, type) VALUES (?,?)", name, type)
  end

   def self.find(id_number, db)
    row = db.execute("SELECT * FROM pokemon WHERE id=?", id_number).first
    self.new(id: row[0], name: row[1], type: row[2], hp: row[3], db: db )
  end

   def alter_hp(new_hp, db)
    db.execute("UPDATE pokemon SET hp = ? WHERE id = ?", new_hp, self.id)
  end
=======
  attr_accessor :id, :name, :type, :hp, :db

  def self.save(name, type, db)
     db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end

  def self.find(id_num, db)
    row = db.execute("SELECT * FROM pokemon WHERE id=?", id_num).first
    Pokemon.new(row, db)
  end

  def initialize(attr_array, db)
     @id, @name, @type, @hp = *attr_array
     @db = db
  end

 def alter_hp(new_hp)
   db.execute("UPDATE pokemon SET hp = ? WHERE id = ?", new_hp, id)
 end

>>>>>>> 4ff35a9e97f75a3c4f7c00052bece372ba71fd13
end
