class DegreesController < ApplicationController

    def index
        @degrees = current_user.all
        json_response(@degrees)
    end

    def show
        json_response(current_user.find(params[:id]))
    end

    def create
        @degree = current_user.create!(degree_params)
        json_response(@degree, :created)
    end

    private
    def degree_params
        params.permit(:minor, :major, :student_id)
    end

end
