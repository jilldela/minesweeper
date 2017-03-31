require_relative "tile"

class Board
  attr_accessor :grid

  def initialize
    @grid = Array.new(9) { Array.new(9) { Tile.new } }
  end

  def populate
    @grid.each do |row|
      bombs = row.sample(2)
      row.each_with_index do |tile, i|
        bombs.include?(tile) ? tile.bomb = true : next
      end
    end
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
      puts "#{i} #{row.map(&:reveal).join(" ")}"
    end
  end

  def flag
  end

  def unflag
  end

  def reveal

  end

end
