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
    @baseball.create(
      player: params[:params],
      team: params[:index],
      number: params[:number]
    )
    @baseball.save
    render :show
  end
   
  def update
end
