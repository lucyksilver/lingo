class ClubsController < ApplicationController
  def index
    @clubs = Club.all
  end

  def show
    @user = current_user
    @club = Club.find(params[:id])
  end

  def new
    @club = Club.new
  end

  def create
    @club = Club.new(club_params)
    @club.user = current_user
    if @club.save
      redirect_to club_path(@club)
    else
      render new
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def club_params
    params.require(:club).permit(:name, :location, :description)
  end
end
