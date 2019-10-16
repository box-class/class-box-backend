class StudentsController < ApplicationController

    def index
        @students = Student.find_by(student_id: @current_user.student_id)
        json_response(@students)
    end

    def create 
        @student = Student.create!(todo_params)
        json_response(@student, :created)
    end

    private 

    def todo_params
        # whitelist params
        params.permit(:student_id, :first_name, :last_name, :dob, :address, :school_name, :start_date, :projected_end_date, :gpa, :student)
      end
end
