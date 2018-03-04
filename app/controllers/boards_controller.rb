class BoardsController < ApplicationController
  def index
  end

  def new
    @board = Board.new
  end
end
