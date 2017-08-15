class SectionsController < ApplicationController
before_action :set_section, only: [:show, :edit, :update]
before_action :authenticate_instructor!

  def index
    @course = Course.find(params[:course_id])
    @sections = @course.sections
  end
  
  def new
    @course = Course.find(params[:course_id])
    @section = @course.sections.build
  end

  def create
    @course = Course.find(params[:course_id])
    @section = @course.sections.build(section_params)
    if @section.save
      redirect_to course_sections_path, notice:"セクションが無事登録されました。"
    else
      render :new
    end
  end
  
  def edit
  end

  def update
    if @section.update(section_params)
      redirect_to course_sections_path, notice: "変更が保存されました。"
    else
      render :edit
    end
  end
  
  def show
    # タスク内の左側に表示するメニュー用
    course = Course.find(params[:course_id])
    @sections = course.sections
    
  end

private
  def set_section
    @course = Course.where(:id => params[:course_id]).first
    @section = @course.sections.where(:id => params[:id]).first
  end
  
  def section_params
    params.require(:section).permit(:title, :header, :content, :number)
  end
  
end
