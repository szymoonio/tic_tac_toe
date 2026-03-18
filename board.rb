class Board
  attr_accessor :rows, :game_over
  def initialize
    self.rows = Array.new(3) {Array.new(3, ' ')}
    self.game_over = false
  end
  def show_state
    rows.each do |row|
      puts " #{row[0]} | #{row[1]} | #{row[2] }"
      puts "-----------"
    end
  end
  def change_state(player, r, c)
    self.rows[r][c] = player.sign
    if rows[r][0] == rows[r][1] && rows[r][1] == rows[r][2]
      self.game_over = true
    elsif rows[0][c] == rows[1][c] && rows[1][c] == rows[2][c]
      self.game_over = true
    elsif rows[0][0] == rows[1][1] && rows[1][1] == rows[2][2]
      self.game_over = true
    elsif rows[0][2] == rows[1][1] && rows[1][1] == rows[2][0]
      self.game_over = true
    end
  end
end