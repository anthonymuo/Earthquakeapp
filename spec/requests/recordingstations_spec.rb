require 'rails_helper'

RSpec.describe "Recordingstations", type: :request do
  describe "GET /recordingstations" do
    it "works! (now write some real specs)" do
      get recordingstations_path
      expect(response).to have_http_status(200)
    end
  end
end
