class BookingsController < ApplicationController

  def show
    @booking = Booking.find(params[:id])
    @lesson = Lesson.find(params[:lesson_id])
  end

  def new
    @booking = Booking.new
    @lesson = Lesson.find(params[:lesson_id])
  end

  def create
    @lesson = Lesson.find(params[:lesson_id])
    @user = current_user
    @booking = Booking.new(booking_params)
    @booking.user = @user
    @booking.lesson = @lesson
    if @booking.save
      redirect_to lesson_booking_path(@lesson, @booking)
    else
      render :new
    end

  end

  def destroy

  end

  private

  def booking_params
    params.require(:booking).permit(:description)
  end
end
