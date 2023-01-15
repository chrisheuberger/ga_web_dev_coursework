class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find params.fetch(:id)
    @check_ins = @student.check_ins
  end
end
