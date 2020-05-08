class LessonsController < ApplicationController

  def index
    if user_signed_in?
      @lessons = Lesson.where.not(user: current_user)
    else
      @lessons = Lesson.all
    end

    if params[:search].present?
      search_hash = params.require(:search).permit(:language, :level, :time)
      search_hash.delete_if {|key, value| value == ""}
      @lessons = @lessons.where(search_hash)
    end
  end

  def show
    @lesson = Lesson.find(params[:id])
    @user = current_user
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.new(lesson_params)
    @lesson.user = current_user
    if @lesson.save
      redirect_to lesson_path(@lesson)
    else
      render :new
    end
  end

  def edit

  end

  def update

  end

  private

  def lesson_params

  end
end
