class BoardsController < ApplicationController
  def index
    @boards = Board.order(created_at: :desc).limit(10)
  end

  def all_boards
    @boards = Board.all.order(created_at: :desc)
  end

  def new
    @board = Board.new
  end

  def create
    generator = MinesweeperBoard.new(
      board_params[:width].to_i,
      board_params[:height].to_i,
      board_params[:mines].to_i
    )
    generated_board = generator.generate_board

    @board = Board.new(board_params)
    @board.board = generated_board.to_json

    if @board.save
      redirect_to @board
    else
      render :new
    end
  end

  def show
    @board = Board.find(params[:id])
    @generated_board = JSON.parse(@board.board)
  end

  private

  def board_params
    params.require(:board).permit(:email, :name, :width, :height, :mines)
  end
end