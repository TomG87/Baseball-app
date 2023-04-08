class BaseballsController < ApplicationController
  def show
    @baseball = Baseball.find_by(id: params[:id])
    render :show
  end

  def index
    @baseballs = Baseball.all
    render :index
  end

  def create
    @baseball = Baseball.create(
      player: params[:player],
      team: params[:team],
      number: params[:number]
    )
    @baseball.save
    render :show
  end
   
  def update
    @baseball = Baseball.find_by(id: params[:id])
    @baseball.player = params[:player] || @baseball.player
    @baseball.team = params[:team] || @baseball.team
    @baseball.number = params[:number] || @baseball.number
    @baseball.save
    render :show
  end

  def destroy
    @baseball = Baseball.find_by(id: params[:id])
    @baseball.destroy
    render json: {message: "Player has been removed"}
  end
end
