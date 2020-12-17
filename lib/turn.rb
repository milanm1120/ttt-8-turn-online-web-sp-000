def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i-1
end

def valid_move?(board, index, char)
  board[index] = char
end

def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    return false
  else board[index] == "X" || "O"
    return true
  end
end

def valid_move?(board, index)
  if position_taken?(board, index) == false && (index).between?(0,8)
    return true
  else
    return false
  end
end


def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  input_to_index(user_input)
  if valid_move?(board, index, char)
    position_taken?(board, index)
  else
    turn(board)
  end
end
