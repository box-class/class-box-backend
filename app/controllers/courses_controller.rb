class CoursesController < ApplicationController

    def index 
        @courses = Course.all
        json_response(@courses)
    end

    def show 
        json_response(Course.find(params[:id]))
    end

    def create
        @create = Course.create!(course_params)
        json_response(@create, :created)
    end

    def course_params
        # whitelist params
        params.permit(:courseId, :shortName, :name, :credits, :time, :days, :degree_id)
    end


end
