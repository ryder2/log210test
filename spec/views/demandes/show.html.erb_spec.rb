require 'rails_helper'

RSpec.describe "demandes/show", type: :view do
  before(:each) do
    @demande = assign(:demande, Demande.create!(
      :demande_id => "Demande",
      :service => "Service",
      :frequence => "Frequence",
      :statut => 2,
      :demandeur => "Demandeur",
      :payee_par => "Payee Par",
      :famille_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Demande/)
    expect(rendered).to match(/Service/)
    expect(rendered).to match(/Frequence/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Demandeur/)
    expect(rendered).to match(/Payee Par/)
    expect(rendered).to match(/3/)
  end
end
