require 'rails_helper'

RSpec.describe "demandes/index", type: :view do
  before(:each) do
    assign(:demandes, [
      Demande.create!(
        :demande_id => 1,
        :service => "VS",
        :frequence => "Frequence",
        :statut => 2,
        :demandeur => "Demandeur",
        :payee_par => "Payee Par",
        :famille_id => 3
      ),
      Demande.create!(
        :demande_id => 1,
        :service => "VS",
        :frequence => "Frequence",
        :statut => 2,
        :demandeur => "Demandeur",
        :payee_par => "Payee Par",
        :famille_id => 3
      )
    ])
  end

  it "renders a list of demandes" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "VS".to_s, :count => 2
    assert_select "tr>td", :text => "Frequence".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Demandeur".to_s, :count => 2
    assert_select "tr>td", :text => "Payee Par".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
