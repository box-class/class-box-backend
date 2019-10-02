class DegreesController < ApplicationController

    def index
        @degrees = Degree.all
        json_response(@degrees)
    end

    def show
        json_response(@degrees)
    end

    def create
        @degree = Degree.create!(degree_params)
        json_response(@degree, :created)
    end

    private
    def degree_params
        params.require(:degree).permit(:minor, :major, :student_id)
    end

end
