class StudentsController < ApplicationController

    def index
        @students = Student.find_by(studentId: @current_user.studentId)
        json_response(@students)
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
