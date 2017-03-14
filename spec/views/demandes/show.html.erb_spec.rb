require 'rails_helper'

RSpec.describe "demandes/show", type: :view do
  let(:user) { FactoryGirl.create(:user) }
  before(:each) do
    allow(view).to receive(:current_user) { user }
    @demande = assign(:demande, Demande.create!(
      :demande_id => "1",
      :service => "VS",
      :frequence => "MyString",
      :statut => "1",
      :demandeur => "MyString",
      :payee_par => "MyString",
      :famille_id => "1",
      :created_at => "2001-01-01",
      :updated_at => "2001-01-01",
      :motif_id => 1,
      :transport => "Marche",
      :refere_par => "Bob",
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2001-01-01/)
    expect(rendered).to match(/2001-01-01/)
    expect(rendered).to match(/Marche/)
    expect(rendered).to match(/Bob/)
    expect(rendered).to match(/MyString/)
    expect(rendered).to match(/MyString/)
    expect(rendered).to match(/MyString/)
  end
end
