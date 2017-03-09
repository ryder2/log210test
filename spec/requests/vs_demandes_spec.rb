require 'rails_helper'

RSpec.describe "VsDemandes", type: :request do
  describe "GET /vs_demandes" do
    it "works! (now write some real specs)" do
      get vs_demandes_path
      expect(response).to have_http_status(200)
    end
  end
end
