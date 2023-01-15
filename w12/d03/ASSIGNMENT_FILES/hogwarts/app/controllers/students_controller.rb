    class StudentsController < ApplicationController
    def index
    @students = Students.all
    end
    def show
      @sudent = params[:student]
    end
    def new
      new_student = Student.new(parmas)
      student = Student.create
      house << student
      redirect to 'idnex'
    end