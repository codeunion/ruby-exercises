# Classes: Board

# Let's write a class that represents a basic grid-based "game board",
# as in chess, checkers, tic-tac-toe, Go, and so on.  This is *only* the board
# and it contains absolutely no game-specific logic.

# The only "rules" are as follows:
#
# 1. The board is a rectangular grid of "cells" or "squares"
# 2. You can place anything you want on each board square
# 3. Only one piece can be present on a given board square at a time
# 4. You can remove a piece from a board square, too.
# 5. If you try to place a piece on an already-occupied square,
#    the board should raise an error.
# 6. If you try to remove a piece from an empty square,
#    the board should raise an error.
# 7. If at any point you try to look at a square which is "out of bounds",
#    the board should raise an error.

# In short, you should imagine an empty chess-like board absent the idea
# that you're playing chess or any other game.  You can place and remove
# whatever you want from each square — chess pieces, paper scraps, coins, etc. —
# but you can only place one thing on each square.

# In code, we'll be representing a "piece" by a single-character string like
# "X", "O", "K", "Q", "N", etc.

class Board
  # Allow rectangular boards.
  def initialize(rows, columns)
    @rows = rows
    @columns = columns

    # This creates a 2-dimensional array filled with nil values
    # See http://cl.ly/image/12073k0X2v0G
    @board = Array.new(@rows) { Array.new(@columns) }
  end

  # Return the number of rows on the board
  def rows
    @rows
  end

  # Return the number of columns on the board
  def columns
    @columns
  end

  # Place a "piece" on the board at (row, column)
  def place(row, column, piece)
    if row >= self.rows
      raise "Board has #{self.rows} rows and index #{row} is out of bounds."
    end

    if row >= self.rows
      raise "Board has #{self.columns} columns and index #{column} is out of bounds."
    end

    if @board[row][column] != nil
      raise "Cannot place #{piece.inspect} at row #{row}, column #{column}: #{@board[row][column].inspect} is already there."
    end

    @board[row][column] = piece
  end

  # Returns the piece at (row, column) on the board and nil otherwise, e.g.,
  #   board = Board.new(9,9)
  #
  #   board.at(5,5) == nil  # We haven't placed anything at (5,5) yet
  #   board.place(5,5,"X")  # Place "X" at (5,5)
  #   board.at(5,5) == "X"  # Now "X" is at (5,5)
  def at(row, column)
    # We have to do three things:
    #
    # 1. Make sure "row" is in bounds
    # 2. Make sure "column" is in bounds
    # 3. Return the appropriate value on the board (if present)
    @board[row][column]
  end

  # Removes the piece at (row, column) on the board if there is one to remove.
  # Raises an error if we try to remove something from an empty square.
  def remove(row, column)
    # We have to do four things:
    #
    # 1. Make sure "row" is in bounds
    # 2. Make sure "column" is in bounds
    # 3. Make sure there's a piece at (row, column) to remove
    # 4. If all the above check out, remove the appropriate piece
  end
end

# Don't change this method!
# print_board prints the board out to the screen in an easy-to-read format
def print_board(board)
  board.rows.times do |row|
    print "|"

    board.columns.times do |column|
      piece = board.at(row, column)

      if piece == nil
        piece = " " # Display empty cells as spaces
      end

      print "#{piece}|"
    end

    print "\n"
  end

end

# Don't change this code, either!
# See http://cl.ly/image/3t450Y271d25 for expected output
if __FILE__ == $0
  board = Board.new(4,4)
  board.place(0,0,"X")
  board.place(1,1,"O")
  board.place(2,2,"X")
  board.place(3,3,"#")

  print_board(board)
end
