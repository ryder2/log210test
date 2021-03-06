require 'rails_helper'

RSpec.describe "parents/new", type: :view do
  before(:each) do
    assign(:parent, Parent.new(
		:statut => 1,
		:nom => "MyString",
		:date_naissance => "2000-01-01",
		:demande_id => 1
    ))
  end

  it "renders new parent form" do
    render

    assert_select "form[action=?][method=?]", parents_path, "post" do

      assert_select "input#parent_statut[name=?]", "parent[statut]"

      assert_select "input#parent_nom[name=?]", "parent[nom]"
    end
  end
end
