require 'rails_helper'

RSpec.describe "parents/index", type: :view do
  before(:each) do
    assign(:parents, [
      Parent.create!(
        :statut => 2,
        :telephone => "Telephone",
        :nom => "Nom"
      ),
      Parent.create!(
        :statut => 2,
        :telephone => "Telephone",
        :nom => "Nom"
      )
    ])
  end

  it "renders a list of parents" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Telephone".to_s, :count => 2
    assert_select "tr>td", :text => "Nom".to_s, :count => 2
  end
end
