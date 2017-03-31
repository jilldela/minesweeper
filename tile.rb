class Tile
  attr_accessor :bomb, :counter

  def initialize(counter, bomb = false)
    @counter = counter
    @bomb = bomb
  end

end
