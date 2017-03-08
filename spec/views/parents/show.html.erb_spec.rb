require 'rails_helper'

RSpec.describe "parents/show", type: :view do
  before(:each) do
    @parent = assign(:parent, Parent.create!(
      :statut => 2,
      :telephone => "Telephone",
      :nom => "Nom"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Telephone/)
    expect(rendered).to match(/Nom/)
  end
end
