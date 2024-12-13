class MinesweeperBoard
  def initialize(width, height, mines)
    @width = width
    @height = height
    @mines = [mines, width * height].min
  end

  def generate_board
    flat_board = Array.new(@width * @height, '.')
    mine_positions = (0...flat_board.size).to_a.sample(@mines)
    mine_positions.each { |pos| flat_board[pos] = '*' }
    flat_board.each_slice(@width).to_a
  end
end