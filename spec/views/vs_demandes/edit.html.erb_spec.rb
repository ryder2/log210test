require 'rails_helper'

RSpec.describe "vs_demandes/edit", type: :view do
  before(:each) do
    @vs_demande = assign(:vs_demande, VsDemande.create!(
      :motif_pv => "MyString",
      :motivations_pv => "MyString",
      :interdit_contact_pv => false,
      :contact_enfant_pv => false,
      :contact_telephone_enfant_pv => false,
      :attitude_parent_pv => "MyString",
      :demande_id => 1,
      :motif_pg => "MyString",
      :dernier_contact_deroulement_pg => "MyString",
      :contact_telephone_enfant_pg => false,
      :autorisation_accompagnement_pg => false,
      :personnes_autorisees_pg => "MyString",
      :attitude_parent_pg => "MyString",
      :jeux_favoris_pg => "MyString",
      :gout_alimentaire_pg => "MyString",
      :enfant_sait_visite_pg => false,
      :reaction_visite_pg => "MyString",
      :attitude_enfant_pg => "MyString",
      :autre_pg => "MyString"
    ))
  end

  it "renders the edit vs_demande form" do
    render

    assert_select "form[action=?][method=?]", vs_demande_path(@vs_demande), "post" do

      assert_select "input#vs_demande_motif_pv[name=?]", "vs_demande[motif_pv]"

      assert_select "input#vs_demande_motivations_pv[name=?]", "vs_demande[motivations_pv]"

      assert_select "input#vs_demande_interdit_contact_pv[name=?]", "vs_demande[interdit_contact_pv]"

      assert_select "input#vs_demande_contact_enfant_pv[name=?]", "vs_demande[contact_enfant_pv]"

      assert_select "input#vs_demande_contact_telephone_enfant_pv[name=?]", "vs_demande[contact_telephone_enfant_pv]"

      assert_select "input#vs_demande_attitude_parent_pv[name=?]", "vs_demande[attitude_parent_pv]"

      assert_select "input#vs_demande_demande_id[name=?]", "vs_demande[demande_id]"

      assert_select "input#vs_demande_motif_pg[name=?]", "vs_demande[motif_pg]"

      assert_select "input#vs_demande_dernier_contact_deroulement_pg[name=?]", "vs_demande[dernier_contact_deroulement_pg]"

      assert_select "input#vs_demande_contact_telephone_enfant_pg[name=?]", "vs_demande[contact_telephone_enfant_pg]"

      assert_select "input#vs_demande_autorisation_accompagnement_pg[name=?]", "vs_demande[autorisation_accompagnement_pg]"

      assert_select "input#vs_demande_personnes_autorisees_pg[name=?]", "vs_demande[personnes_autorisees_pg]"

      assert_select "input#vs_demande_attitude_parent_pg[name=?]", "vs_demande[attitude_parent_pg]"

      assert_select "input#vs_demande_jeux_favoris_pg[name=?]", "vs_demande[jeux_favoris_pg]"

      assert_select "input#vs_demande_gout_alimentaire_pg[name=?]", "vs_demande[gout_alimentaire_pg]"

      assert_select "input#vs_demande_enfant_sait_visite_pg[name=?]", "vs_demande[enfant_sait_visite_pg]"

      assert_select "input#vs_demande_reaction_visite_pg[name=?]", "vs_demande[reaction_visite_pg]"

      assert_select "input#vs_demande_attitude_enfant_pg[name=?]", "vs_demande[attitude_enfant_pg]"

      assert_select "input#vs_demande_autre_pg[name=?]", "vs_demande[autre_pg]"
    end
  end
end
