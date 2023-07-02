class StudentsController < ApplicationController
    def index 
        students = Student.all
        render json: students
    end
    # return JSON data representing a list of all students, ordered by grade from highest to lowest
    def grades 
        students = Student.order(grade: :desc)
        render json: students
    end
    def highest_grade 
        students =Student.order(grade: :desc).first
        render json: student
    end
end