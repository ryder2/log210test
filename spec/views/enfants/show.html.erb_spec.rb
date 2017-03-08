require 'rails_helper'

RSpec.describe "enfants/show", type: :view do
  before(:each) do
    @enfant = assign(:enfant, Enfant.create!(
      :age => 2,
      :residence => "Residence",
      :nom => "Nom",
      :demande_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Residence/)
    expect(rendered).to match(/Nom/)
    expect(rendered).to match(/3/)
  end
end
