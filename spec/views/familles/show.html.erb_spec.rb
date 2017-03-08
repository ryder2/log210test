require 'rails_helper'

RSpec.describe "familles/show", type: :view do
  before(:each) do
    @famille = assign(:famille, Famille.create!(
      :nom => "Nom"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nom/)
  end
end
