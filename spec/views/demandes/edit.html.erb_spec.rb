require 'rails_helper'

RSpec.describe "demandes/edit", type: :view do
  let(:user) { FactoryGirl.create(:user) }
  before(:each) do
    allow(view).to receive(:current_user) { user }
    @demande = assign(:demande, Demande.create!(
      :demande_id => "1",
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

  it "renders the edit demande form" do
    render
      assert_select "input#demande_demande_id[name=?]", "demande[demande_id]"

      assert_select "input#demande_frequence[name=?]", "demande[frequence]"

      assert_select "input#demande_statut[name=?]", "demande[statut]"

      assert_select "input#demande_demandeur[name=?]", "demande[demandeur]"

      assert_select "input#demande_payee_par[name=?]", "demande[payee_par]"

      assert_select "input#demande_famille_id[name=?]", "demande[famille_id]"
  end
end
