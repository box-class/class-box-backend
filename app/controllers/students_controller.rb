class StudentsController < ApplicationController

    def index
        @students = Student.all
        json_response(@students)
    end

    def show
        json_response(Student.find(params[:id]))
    end

    def create 
        @student = Student.create!(todo_params)
        json_response(@student, :created)
    end


    private 

    def todo_params
        # whitelist params
        params.permit(:studentId, :firstName, :lastName, :dob, :address, :schoolName, :startDate, :projectedEd, :gpa, :student)
      end
end
