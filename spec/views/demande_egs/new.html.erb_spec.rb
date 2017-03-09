require 'rails_helper'

RSpec.describe "demande_egs/new", type: :view do
  before(:each) do
    assign(:demande_eg, DemandeEg.new(
      :motif => "MyString",
      :conditions => "MyString",
      :echange_garde => false,
      :reactions_eg => "MyString",
      :description_enfant => "MyString",
      :contact_pg => false,
      :forme_contact_pg => "MyString",
      :attitude_parent => "MyString",
      :attitude_enfant => "MyString",
      :a_suivre => "MyString",
      :demande_id => 1
    ))
  end

  it "renders new demande_eg form" do
    render

    assert_select "form[action=?][method=?]", demande_egs_path, "post" do

      assert_select "input#demande_eg_motif[name=?]", "demande_eg[motif]"

      assert_select "input#demande_eg_conditions[name=?]", "demande_eg[conditions]"

      assert_select "input#demande_eg_echange_garde[name=?]", "demande_eg[echange_garde]"

      assert_select "input#demande_eg_reactions_eg[name=?]", "demande_eg[reactions_eg]"

      assert_select "input#demande_eg_description_enfant[name=?]", "demande_eg[description_enfant]"

      assert_select "input#demande_eg_contact_pg[name=?]", "demande_eg[contact_pg]"

      assert_select "input#demande_eg_forme_contact_pg[name=?]", "demande_eg[forme_contact_pg]"

      assert_select "input#demande_eg_attitude_parent[name=?]", "demande_eg[attitude_parent]"

      assert_select "input#demande_eg_attitude_enfant[name=?]", "demande_eg[attitude_enfant]"

      assert_select "input#demande_eg_a_suivre[name=?]", "demande_eg[a_suivre]"

      assert_select "input#demande_eg_demande_id[name=?]", "demande_eg[demande_id]"
    end
  end
end
