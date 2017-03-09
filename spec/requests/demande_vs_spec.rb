require 'rails_helper'

RSpec.describe "DemandeVs", type: :request do
  describe "GET /demande_vs" do
    it "works! (now write some real specs)" do
      get demande_vs_index_path
      expect(response).to have_http_status(200)
    end
  end
end
