require 'rails_helper'

RSpec.describe "familles/index", type: :view do
  before(:each) do
    assign(:familles, [
      Famille.create!(
        :nom => "Nom",
		:dossier_id => "MyId"
      ),
      Famille.create!(
        :nom => "Nom",
		:dossier_id => "MyId"
      )
    ])
  end

  it "renders a list of familles" do
    render
    assert_select "tr>td", :text => "Nom".to_s, :count => 2
  end
end
