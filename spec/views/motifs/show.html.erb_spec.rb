require 'rails_helper'

RSpec.describe "motifs/show", type: :view do
  before(:each) do
    @motif = assign(:motif, Motif.create!(
      :nom => "Nom"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nom/)
  end
end
