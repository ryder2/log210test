require 'rails_helper'
RSpec.describe "demandes/new", type: :view do
  let(:user) { FactoryGirl.create(:user) }
  before(:each) do
    controller.stub(:authenticate_user!).and_return true
    allow(view).to receive(:current_user) { user }
    assign(:demande, Demande.new(
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

  it "renders new demande form" do
    render

      assert_select "input#demande_demande_id[name=?]", "demande[demande_id]"

      assert_select "input#demande_frequence[name=?]", "demande[frequence]"

      assert_select "input#demande_statut[name=?]", "demande[statut]"

      assert_select "input#demande_demandeur[name=?]", "demande[demandeur]"

      assert_select "input#demande_payee_par[name=?]", "demande[payee_par]"

      assert_select "input#demande_famille_id[name=?]", "demande[famille_id]"
  end
end
