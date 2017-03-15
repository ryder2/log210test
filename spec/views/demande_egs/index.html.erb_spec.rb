require 'rails_helper'

RSpec.describe "demande_egs/index", type: :view do
  before(:each) do
    assign(:demande_egs, [
      DemandeEg.create!(
        :motif => "Motif",
        :conditions => "Conditions",
        :echange_garde => false,
        :reactions_eg => "Reactions Eg",
        :date_separation => "2012-01-01",
        :description_enfant => "Description Enfant",
        :contact_pg => true,
        :forme_contact_pg => "Forme Contact Pg",
        :attitude_parent => "Attitude Parent",
        :attitude_enfant => "Attitude Enfant",
        :a_suivre => "A Suivre",
        :demande_id => 2
      ),
      DemandeEg.create!(
        :motif => "Motif",
        :conditions => "Conditions",
        :echange_garde => false,
        :reactions_eg => "Reactions Eg",
        :date_separation => "2012-01-01",
        :description_enfant => "Description Enfant",
        :contact_pg => true,
        :forme_contact_pg => "Forme Contact Pg",
        :attitude_parent => "Attitude Parent",
        :attitude_enfant => "Attitude Enfant",
        :a_suivre => "A Suivre",
        :demande_id => 2
      )
    ])
  end

  it "renders a list of demande_egs" do
    render
    assert_select "tr>td", :text => "Motif".to_s, :count => 2
    assert_select "tr>td", :text => "Conditions".to_s, :count => 2
    assert_select "tr>td", :text => true.to_s, :count => 2
    assert_select "tr>td", :text => "Reactions Eg".to_s, :count => 2
    assert_select "tr>td", :text => "Description Enfant".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Forme Contact Pg".to_s, :count => 2
    assert_select "tr>td", :text => "Attitude Parent".to_s, :count => 2
    assert_select "tr>td", :text => "Attitude Enfant".to_s, :count => 2
    assert_select "tr>td", :text => "A Suivre".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
