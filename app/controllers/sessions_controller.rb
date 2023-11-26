class SessionsController < ApplicationController
  def new
  end

  def create
    student = Student.find_by(name: params[:session_name])

    if student
      session[:student_id] = student.id
      redirect_to root_path, notice: 'Login successful!'
    else
      flash.now[:alert] = 'Student not found. Please try again.'
      render 'new'
    end
  end

  def destroy
    session[:student_id] = nil
    redirect_to root_path, notice: 'Logged out!'
  end
end
