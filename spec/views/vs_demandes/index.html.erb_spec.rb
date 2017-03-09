require 'rails_helper'

RSpec.describe "vs_demandes/index", type: :view do
  before(:each) do
    assign(:vs_demandes, [
      VsDemande.create!(
        :motif_pv => "Motif Pv",
        :motivations_pv => "Motivations Pv",
        :interdit_contact_pv => false,
        :contact_enfant_pv => false,
        :contact_telephone_enfant_pv => false,
        :attitude_parent_pv => "Attitude Parent Pv",
        :demande_id => 2,
        :motif_pg => "Motif Pg",
        :dernier_contact_deroulement_pg => "Dernier Contact Deroulement Pg",
        :contact_telephone_enfant_pg => false,
        :autorisation_accompagnement_pg => false,
        :personnes_autorisees_pg => "Personnes Autorisees Pg",
        :attitude_parent_pg => "Attitude Parent Pg",
        :jeux_favoris_pg => "Jeux Favoris Pg",
        :gout_alimentaire_pg => "Gout Alimentaire Pg",
        :enfant_sait_visite_pg => false,
        :reaction_visite_pg => "Reaction Visite Pg",
        :attitude_enfant_pg => "Attitude Enfant Pg",
        :autre_pg => "Autre Pg"
      ),
      VsDemande.create!(
        :motif_pv => "Motif Pv",
        :motivations_pv => "Motivations Pv",
        :interdit_contact_pv => false,
        :contact_enfant_pv => false,
        :contact_telephone_enfant_pv => false,
        :attitude_parent_pv => "Attitude Parent Pv",
        :demande_id => 2,
        :motif_pg => "Motif Pg",
        :dernier_contact_deroulement_pg => "Dernier Contact Deroulement Pg",
        :contact_telephone_enfant_pg => false,
        :autorisation_accompagnement_pg => false,
        :personnes_autorisees_pg => "Personnes Autorisees Pg",
        :attitude_parent_pg => "Attitude Parent Pg",
        :jeux_favoris_pg => "Jeux Favoris Pg",
        :gout_alimentaire_pg => "Gout Alimentaire Pg",
        :enfant_sait_visite_pg => false,
        :reaction_visite_pg => "Reaction Visite Pg",
        :attitude_enfant_pg => "Attitude Enfant Pg",
        :autre_pg => "Autre Pg"
      )
    ])
  end

  it "renders a list of vs_demandes" do
    render
    assert_select "tr>td", :text => "Motif Pv".to_s, :count => 2
    assert_select "tr>td", :text => "Motivations Pv".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 12
    assert_select "tr>td", :text => "Attitude Parent Pv".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Motif Pg".to_s, :count => 2
    assert_select "tr>td", :text => "Dernier Contact Deroulement Pg".to_s, :count => 2
    assert_select "tr>td", :text => "Personnes Autorisees Pg".to_s, :count => 2
    assert_select "tr>td", :text => "Attitude Parent Pg".to_s, :count => 2
    assert_select "tr>td", :text => "Jeux Favoris Pg".to_s, :count => 2
    assert_select "tr>td", :text => "Gout Alimentaire Pg".to_s, :count => 2
    assert_select "tr>td", :text => "Reaction Visite Pg".to_s, :count => 2
    assert_select "tr>td", :text => "Attitude Enfant Pg".to_s, :count => 2
    assert_select "tr>td", :text => "Autre Pg".to_s, :count => 2
  end
end
