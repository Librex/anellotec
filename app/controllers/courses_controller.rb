class CoursesController < ApplicationController

before_action :set_course, only: [:show, :edit, :update]
before_action :authenticate_instructor!, except: [:show]
before_action :require_same_instructor, only: [:edit, :update]

  def index
    @courses = current_instructor.courses
  end

  def new
    @course = current_instructor.courses.build
  end

  def create
    @course = current_instructor.courses.build(course_params)
    if @course.save
      redirect_to @course, notice:"コース内容が無事登録されました。"
    else
      render :new
    end
  end

  def show
    @sections = @course.sections
  end

  def edit
  end

  def update
    if @course.update(course_params)
      redirect_to @course, notice: "変更が保存されました。"
    else
      render :edit
    end
  end

private
  def set_course
    @course = Course.find(params[:id])
  end
  
  def course_params
    params.require(:course).permit(:title, :abstract, :thumbnail, :active, :price)
  end

  def require_same_instructor
    if current_instructor.id != @course.instructor_id
      flash[:danger] = "このページを編集する権限を持ちません。"
      redirect_to root_path
    end
  end
end
