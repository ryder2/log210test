require 'rails_helper'

RSpec.describe "demandes/new", type: :view do
  before(:each) do
    assign(:demande, Demande.new(
      :demande_id => "MyString",
      :service => "MyString",
      :frequence => "MyString",
      :statut => 1,
      :demandeur => "MyString",
      :payee_par => "MyString",
      :famille_id => 1
    ))
  end

  it "renders new demande form" do
    render

    assert_select "form[action=?][method=?]", demandes_path, "post" do

      assert_select "input#demande_demande_id[name=?]", "demande[demande_id]"

      assert_select "input#demande_service[name=?]", "demande[service]"

      assert_select "input#demande_frequence[name=?]", "demande[frequence]"

      assert_select "input#demande_statut[name=?]", "demande[statut]"

      assert_select "input#demande_demandeur[name=?]", "demande[demandeur]"

      assert_select "input#demande_payee_par[name=?]", "demande[payee_par]"

      assert_select "input#demande_famille_id[name=?]", "demande[famille_id]"
    end
  end
end
