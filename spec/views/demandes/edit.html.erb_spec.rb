require 'rails_helper'

RSpec.describe "demandes/edit", type: :view do
  before(:each) do
    @demande = assign(:demande, Demande.create!(
	  :id => 7,
      :demande_id => "1",
	  :created_at => "2000-01-01",
      :frequence => "MyString",
      :service => "VS",
      :demandeur => "MyString",
      :payee_par => "MyString"
    ))
  end

  it "renders the edit demande form" do
    render
#assert_select "a[href=?]", user_path(@user)
    assert_select "form[action=?][method=?]", demande_path(@demande), "post" do

      assert_select "input#demande_demande_id[name=?]", "demande[demande_id]"

      assert_select "input#demande_created_at[name=?]", "demande[created_at]"

      

      assert_select "input#demande_frequence[name=?]", "demande[frequence]"
	  assert_select "input#demande_service[name=?]", "demande[service]"

      assert_select "input#demande_demandeur[name=?]", "demande[demandeur]"

      assert_select "input#demande_payee_par[name=?]", "demande[payee_par]"
	  assert_response :success
    end
  end
end
