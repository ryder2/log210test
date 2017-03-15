require 'rails_helper'

RSpec.describe "demandes/index", type: :view do
  before(:each) do
    assign(:demandes, [
      Demande.create!(
        :demande_id => "fuck_this_shit",
        :frequence => "Frequence",
        :demandeur => "Demandeur",
        :payee_par => "Payee Par",
		:motif_id => 1,
		:service => "EG",
		:famille_id => 1
      ),
      Demande.create!(
        :demande_id => "fuck_this_shit",
        :frequence => "Frequence",
        :demandeur => "Demandeur",
        :payee_par => "Payee Par",
		:motif_id => 1,
		:service => "EG",
		:famille_id => 1
      )
    ])
  end

  it "renders a list of demandes" do
    render
    assert_select "tr>td", :text => "fuck_this_shit".to_s, :count => 2
    assert_select "tr>td", :text => "Frequence".to_s, :count => 2
    assert_select "tr>td", :text => "Demandeur".to_s, :count => 2
    assert_select "tr>td", :text => "Payee Par".to_s, :count => 2
  end
end
