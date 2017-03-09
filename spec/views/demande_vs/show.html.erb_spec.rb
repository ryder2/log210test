require 'rails_helper'

RSpec.describe "demande_vs/show", type: :view do
  before(:each) do
    @demande_vs = assign(:demande_vs, DemandeVs.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Motif Pv/)
    expect(rendered).to match(/Motivations Pv/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Attitude Parent Pv/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Motif Pg/)
    expect(rendered).to match(/Dernier Contact Deroulement Pg/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Personnes Autorisees Pg/)
    expect(rendered).to match(/Attitude Parent Pg/)
    expect(rendered).to match(/Jeux Favoris Pg/)
    expect(rendered).to match(/Gout Alimentaire Pg/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Reaction Visite Pg/)
    expect(rendered).to match(/Attitude Enfant Pg/)
    expect(rendered).to match(/Autres Pg/)
  end
end
