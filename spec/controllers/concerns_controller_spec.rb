require 'rails_helper'

RSpec.describe ConcernsController, type: :controller do

  describe "GET #response" do
    it "returns http success" do
      get :response
      expect(response).to have_http_status(:success)
    end
  end

end
