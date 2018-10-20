class Genre 

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def songs 
    Songs.all.select do |song|
      song.genre = self
    end
  end

end