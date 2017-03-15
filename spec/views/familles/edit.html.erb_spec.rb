require 'rails_helper'

RSpec.describe "familles/edit", type: :view do
  before(:each) do
    @famille = assign(:famille, Famille.create!(
      :nom => "MyString",
	  :dossier_id => "MyId"
    ))
  end

  it "renders the edit famille form" do
    render

    assert_select "form[action=?][method=?]", famille_path(@famille), "post" do

      assert_select "input#famille_nom[name=?]", "famille[nom]"
    end
  end
end
