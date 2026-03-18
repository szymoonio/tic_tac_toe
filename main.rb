require_relative 'board'
require_relative 'player'

puts "Enter your name player 1"
name1 = gets.chomp
puts "Enter your name player 2"
name2 = gets.chomp
player1 = Player.new(name1)
player2 = Player.new(name2)
board = Board.new()
curr = player1
while true
  puts "Your move #{curr.name}"
  r, c = gets.chomp.split.map {|c| c.to_i}
  if board.rows[r][c] != ' '
    puts "Can't do that"
    next
  end
  board.change_state(curr, r, c)
  if board.game_over
    puts "Congratulations #{curr.name}! You've won!"
    break
  end
  board.show_state
  curr = (curr == player1 ? player2 : player1)
end