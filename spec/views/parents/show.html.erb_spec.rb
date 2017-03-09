require 'rails_helper'

RSpec.describe "parents/show", type: :view do
  before(:each) do
    @parent = assign(:parent, Parent.create!(
      :nom => "Nom",
      :statut => 2,
      :date_naissance => "2000-01-01",
      :telephone => "Telephone"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nom/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/2000-01-01/)
    expect(rendered).to match(/Telephone/)
    
  end
end
