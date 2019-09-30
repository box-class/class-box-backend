class CoursesController < ApplicationController

    def index 
        @course = Course.all
    end

    def show 
        @course = Course.find(params[:id])
    end

    def create
        @create = Course.create!(course_params)
        json_response(@create, :created)
    end

    def course_params
        # whitelist params
        params.permit(:courseId)
    end


end
