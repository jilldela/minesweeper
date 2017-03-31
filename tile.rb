class Tile
  attr_accessor :bomb, :counter

  def initialize(counter = 0, bomb = false)
    @counter = counter
    @bomb = bomb
  end

  def reveal
    case
    when bomb
      "💣"
    when counter == 0
      "◽️"
    when counter > 0
      counter
    end
  end
end
