class InstructorsController < ApplicationController

  def show
    @instructor = Instructor.find(params[:id])
    @courses = @instructor.courses
  end

end