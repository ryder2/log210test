require 'rails_helper'

RSpec.describe "parents/show", type: :view do
  before(:each) do
    @parent = assign(:parent, Parent.create!(
		:statut => 2,
		:nom => "Nom",
		:date_naissance => "2000-01-01",
		:demande_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nom/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/2000-01-01/)
    
  end
end
