require 'rails_helper'

RSpec.describe "Classapis", type: :request do
  describe "GET /classapis" do
    it "works! (now write some real specs)" do
      get classapis_path
      expect(response).to have_http_status(200)
    end
  end
end
