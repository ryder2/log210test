require 'rails_helper'

RSpec.describe "demande_egs/show", type: :view do
  before(:each) do
    @demande_eg = assign(:demande_eg, DemandeEg.create!(
      :motif => "Motif",
      :conditions => "Conditions",
      :echange_garde => false,
      :reactions_eg => "Reactions Eg",
      :description_enfant => "Description Enfant",
      :contact_pg => false,
      :forme_contact_pg => "Forme Contact Pg",
      :attitude_parent => "Attitude Parent",
      :attitude_enfant => "Attitude Enfant",
      :a_suivre => "A Suivre",
      :demande_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Motif/)
    expect(rendered).to match(/Conditions/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Reactions Eg/)
    expect(rendered).to match(/Description Enfant/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Forme Contact Pg/)
    expect(rendered).to match(/Attitude Parent/)
    expect(rendered).to match(/Attitude Enfant/)
    expect(rendered).to match(/A Suivre/)
    expect(rendered).to match(/2/)
  end
end
