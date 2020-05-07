class BookingsController < ApplicationController

  def show
    @booking = find(params[:id])
  end

  def new
    @booking = Booking.new
    @lesson = find(params[:lesson_id])
  end

  def create

  end

  def destroy

  end
end
