require 'rails_helper'

RSpec.describe "DemandeEgs", type: :request do
  describe "GET /demande_egs" do
    it "works! (now write some real specs)" do
      get demande_egs_path
      expect(response).to have_http_status(200)
    end
  end
end
