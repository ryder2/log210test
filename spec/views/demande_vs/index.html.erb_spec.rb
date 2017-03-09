require 'rails_helper'

RSpec.describe "demande_vs/index", type: :view do
  before(:each) do
    assign(:demande_vs, [
      DemandeVs.create!(
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
        :enfant_sais_visite_pg => false,
        :reaction_visite_pg => "Reaction Visite Pg",
        :attitude_enfant_pg => "Attitude Enfant Pg",
        :autres_pg => "Autres Pg"
      ),
      DemandeVs.create!(
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
        :enfant_sais_visite_pg => false,
        :reaction_visite_pg => "Reaction Visite Pg",
        :attitude_enfant_pg => "Attitude Enfant Pg",
        :autres_pg => "Autres Pg"
      )
    ])
  end

  it "renders a list of demande_vs" do
    render
    assert_select "tr>td", :text => "Motif Pv".to_s, :count => 2
    assert_select "tr>td", :text => "Motivations Pv".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Attitude Parent Pv".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Motif Pg".to_s, :count => 2
    assert_select "tr>td", :text => "Dernier Contact Deroulement Pg".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Personnes Autorisees Pg".to_s, :count => 2
    assert_select "tr>td", :text => "Attitude Parent Pg".to_s, :count => 2
    assert_select "tr>td", :text => "Jeux Favoris Pg".to_s, :count => 2
    assert_select "tr>td", :text => "Gout Alimentaire Pg".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Reaction Visite Pg".to_s, :count => 2
    assert_select "tr>td", :text => "Attitude Enfant Pg".to_s, :count => 2
    assert_select "tr>td", :text => "Autres Pg".to_s, :count => 2
  end
end
