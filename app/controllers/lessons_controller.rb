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

    elsif params[:query].present?
      @lessons = @lessons.search_by_language(params[:query])
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
    @lesson = Lesson.find(params[:id])

  end

  def update
    @lesson = Lesson.find(params[:id])
    @lesson.update(lesson_params)
    if @lesson.save
      redirect_to lesson_path(@lesson)
    else
      render :edit
    end
  end

  private

  def lesson_params
    params.require(:lesson).permit(:language, :level, :price, :time, :description)
  end
end
