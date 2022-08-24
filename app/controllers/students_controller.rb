class StudentsController < ApplicationController

  def index
    # model
    students = Student.all
    #view
    render json: students
  end

  def grades
    # model
    grades = Student.all.order(grade: :desc)
    #view
    render json: grades
  end

  def highest_grade
    # model
    highest_grade = Student.all.order(grade: :desc).first
    render json: highest_grade
  end

end
