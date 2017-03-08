require 'rails_helper'

RSpec.describe "Enfants", type: :request do
  describe "GET /enfants" do
    it "works! (now write some real specs)" do
      get enfants_path
      expect(response).to have_http_status(200)
    end
  end
end
