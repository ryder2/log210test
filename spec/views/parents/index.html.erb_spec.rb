require 'rails_helper'

RSpec.describe "parents/index", type: :view do
  before(:each) do
    assign(:parents, [
      Parent.create!(
        :nom => "Nom",
        :date_naissance => "2000-01-01"
      ),
      Parent.create!(
        :nom => "Nom",
        :date_naissance => "2000-01-01"
      )
    ])
  end

  it "renders a list of parents" do
    render
    assert_select "tr>td", :text => "Nom".to_s, :count => 2
    assert_select "tr>td", :text => "2000-01-01".to_s, :count => 2
  end
end
