require 'rails_helper'

RSpec.describe "parents/edit", type: :view do
  before(:each) do
    @parent = assign(:parent, Parent.create!(
      :statut => 1,
      :telephone => "MyString",
      :nom => "MyString"
    ))
  end

  it "renders the edit parent form" do
    render

    assert_select "form[action=?][method=?]", parent_path(@parent), "post" do

      assert_select "input#parent_statut[name=?]", "parent[statut]"

      assert_select "input#parent_telephone[name=?]", "parent[telephone]"

      assert_select "input#parent_nom[name=?]", "parent[nom]"
    end
  end
end
