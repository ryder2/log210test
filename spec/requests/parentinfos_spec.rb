require 'rails_helper'

RSpec.describe "Parentinfos", type: :request do
  describe "GET /parentinfos" do
    it "works! (now write some real specs)" do
      get parentinfos_path
      expect(response).to have_http_status(200)
    end
  end
end
