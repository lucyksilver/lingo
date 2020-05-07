class LessonsController < ApplicationController

  def index
    @lessons = Lesson.all
  end

  def show
    @lesson = find(params[:id])

  end

  def new
    @lesson = Lesson.new
  end

  def create

  end

  def edit

  end

  def update

  end
end
