require 'rails_helper'

RSpec.describe "demandes/index", type: :view do
  before(:each) do
    assign(:demandes, [
      Demande.create!(
        :demande_id => 1,
        :service => "VS",
        :frequence => "Frequence",
        :demandeur => "Demandeur",
        :payee_par => "Payee Par"
      ),
      Demande.create!(
        :demande_id => 1,
        :service => "VS",
        :frequence => "Frequence",
        :demandeur => "Demandeur",
        :payee_par => "Payee Par"
      )
    ])
  end

  it "renders a list of demandes" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "VS".to_s, :count => 2
    assert_select "tr>td", :text => "Frequence".to_s, :count => 2
    assert_select "tr>td", :text => "Demandeur".to_s, :count => 2
    assert_select "tr>td", :text => "Payee Par".to_s, :count => 2
  end
end
