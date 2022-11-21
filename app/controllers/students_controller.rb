class StudentsController < ApplicationController
  def index
    list = Student.all
    render json: list
  end
  def grade
    grade = Student.all.order(grade: :desc)
    render json: grade
  end

  def highest
    best= Student.all.order(grade: :desc).first
    render json: best
  end
end
