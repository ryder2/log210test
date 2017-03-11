require 'rails_helper'

RSpec.describe "Motifs", type: :request do
  describe "GET /motifs" do
    it "works! (now write some real specs)" do
      get motifs_path
      expect(response).to have_http_status(302)
    end
  end
end
