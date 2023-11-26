class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    @current_student = current_student if session[:student_id].present?
  end
end
