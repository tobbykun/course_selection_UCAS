class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  def enroll
    @course = Course.find(params[:id])
    current_student.courses << @course
    redirect_to current_student, notice: 'Enrolled in the course!'
  end

  def drop
    @course = Course.find(params[:id])
    current_student.courses.delete(@course)
    redirect_to current_student, notice: 'Dropped the course.'
  end

  private

  def require_login
    unless current_student
      redirect_to login_path, alert: 'Please log in first.'
    end
  end
end
