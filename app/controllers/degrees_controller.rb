class DegreesController < ApplicationController

    def index
        @degrees = Degree.all
        json_response(@degrees)
    end

    def show
        json_response(@degrees)
    end

end
