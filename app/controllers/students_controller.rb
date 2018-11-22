class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  def set_student
    @student = Student.find_by(id: params[:id])
    if @student
      if @student.active
        @student.update(active: false)
      render :show
      else
      @student.update(active: false)
      render :show

      end
    else "Student not found"
    end
  end
end
