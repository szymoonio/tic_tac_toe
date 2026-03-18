class Board
  attr_accessor :rows
  def initialize
    self.rows = Array.new(3) {Array.new(3, ' ')}
  end
  def show_state
    rows.each do |row|
      puts " #{row[0]} | #{row[1]} | #{row[2] }"
      puts "-----------"
    end
  end
end