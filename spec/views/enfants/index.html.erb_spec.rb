require 'rails_helper'

RSpec.describe "enfants/index", type: :view do
  before(:each) do
    assign(:enfants, [
      Enfant.create!(
        :date_naissance => "2001-01-01",
        :residence => "Residence",
        :nom => "Nom"
      ),
      Enfant.create!(
        :date_naissance => "2001-01-01",
        :residence => "Residence",
        :nom => "Nom"
      )
    ])
  end

  it "renders a list of enfants" do
    render
    assert_select "tr>td", :text => "2001-01-01", :count => 2
    assert_select "tr>td", :text => "Residence".to_s, :count => 2
    assert_select "tr>td", :text => "Nom".to_s, :count => 2
  end
end
