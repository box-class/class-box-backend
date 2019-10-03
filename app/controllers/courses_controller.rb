class CoursesController < ApplicationController

    def index 
        @courses = current_user.all
        json_response(@courses)
    end

    def show 
        json_response(current_user.find(params[:id]))
    end

    def create
        @create = current_user.create!(course_params)
        json_response(@create, :created)
    end

    def course_params
        # whitelist params
        params.permit(:courseId, :shortName, :name, :credits, :time, :days, :degree_id)
    end


end
