require_relative "tile"

class Board
  attr_accessor :grid

  def initialize
    @grid = Array.new(9) { Array.new(9) { "x" } }
  end

  def populate

  end

  def [](pos)
    x, y = pos
    @grid[x][y]
  end

  def []=(pos, value)
    x, y = pos
    @grid[x][y] = value
  end

  def render
    puts "  " + (0..8).to_a.join(" ")
    @grid.each_with_index do |row, i|
      puts "#{i} #{row.join(" ")}"
    end
  end

  def reveal
  end

end
