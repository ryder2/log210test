require 'rails_helper'

RSpec.describe "demande_vs/edit", type: :view do
  before(:each) do
    @demande_vs = assign(:demande_vs, DemandeVs.create!(
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
      :enfant_sais_visite_pg => false,
      :reaction_visite_pg => "MyString",
      :attitude_enfant_pg => "MyString",
      :autres_pg => "MyString"
    ))
  end

  it "renders the edit demande_vs form" do
    render

    assert_select "form[action=?][method=?]", demande_vs_path(@demande_vs), "post" do

      assert_select "input#demande_vs_motif_pv[name=?]", "demande_vs[motif_pv]"

      assert_select "input#demande_vs_motivations_pv[name=?]", "demande_vs[motivations_pv]"

      assert_select "input#demande_vs_interdit_contact_pv[name=?]", "demande_vs[interdit_contact_pv]"

      assert_select "input#demande_vs_contact_enfant_pv[name=?]", "demande_vs[contact_enfant_pv]"

      assert_select "input#demande_vs_contact_telephone_enfant_pv[name=?]", "demande_vs[contact_telephone_enfant_pv]"

      assert_select "input#demande_vs_attitude_parent_pv[name=?]", "demande_vs[attitude_parent_pv]"

      assert_select "input#demande_vs_demande_id[name=?]", "demande_vs[demande_id]"

      assert_select "input#demande_vs_motif_pg[name=?]", "demande_vs[motif_pg]"

      assert_select "input#demande_vs_dernier_contact_deroulement_pg[name=?]", "demande_vs[dernier_contact_deroulement_pg]"

      assert_select "input#demande_vs_contact_telephone_enfant_pg[name=?]", "demande_vs[contact_telephone_enfant_pg]"

      assert_select "input#demande_vs_autorisation_accompagnement_pg[name=?]", "demande_vs[autorisation_accompagnement_pg]"

      assert_select "input#demande_vs_personnes_autorisees_pg[name=?]", "demande_vs[personnes_autorisees_pg]"

      assert_select "input#demande_vs_attitude_parent_pg[name=?]", "demande_vs[attitude_parent_pg]"

      assert_select "input#demande_vs_jeux_favoris_pg[name=?]", "demande_vs[jeux_favoris_pg]"

      assert_select "input#demande_vs_gout_alimentaire_pg[name=?]", "demande_vs[gout_alimentaire_pg]"

      assert_select "input#demande_vs_enfant_sais_visite_pg[name=?]", "demande_vs[enfant_sais_visite_pg]"

      assert_select "input#demande_vs_reaction_visite_pg[name=?]", "demande_vs[reaction_visite_pg]"

      assert_select "input#demande_vs_attitude_enfant_pg[name=?]", "demande_vs[attitude_enfant_pg]"

      assert_select "input#demande_vs_autres_pg[name=?]", "demande_vs[autres_pg]"
    end
  end
end
