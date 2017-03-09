require 'rails_helper'

RSpec.describe "motifs/index", type: :view do
  before(:each) do
    assign(:motifs, [
      Motif.create!(
        :nom => "Nom"
      ),
      Motif.create!(
        :nom => "Nom"
      )
    ])
  end

  it "renders a list of motifs" do
    render
    assert_select "tr>td", :text => "Nom".to_s, :count => 2
  end
end
