class StudentsController < ApplicationController

#  house_students GET     /houses/:house_id/students(.:format)        students#index
  def index
    @students = Student.all
  end

# house_student GET       /houses/:house_id/students/:id(.:format)    students#show
  def show
    @student = params[:student]
  end

# POST                    /houses/:house_id/students(.:format)        students#create
  def create
    house = House.find(params[:house_id])
    student = Moon.create(student_params)
    house.students << student
    redirect_to student_path(house)
  end

# new_house_student GET   /houses/:house_id/students/new(.:format)    students#new
  def new
    @student = Student.find(params[:student_id])
  end

  private

  def student_params
    params.require(:student).permit(:name, :house_id)
  end

end
