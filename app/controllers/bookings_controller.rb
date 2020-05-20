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
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.lesson = Lesson.find(params[:lesson_id])
    if @booking.save
      redirect_to lesson_booking_path(@booking.lesson, @booking)
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    if @booking.save
      redirect_to lesson_booking_path(@booking.lesson, @booking)
      else
        render :edit
      end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.delete
    redirect_to lessons_path
  end

  private

  def booking_params
    params.require(:booking).permit(:description)
  end
end
