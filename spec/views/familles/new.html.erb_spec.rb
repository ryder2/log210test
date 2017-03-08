require 'rails_helper'

RSpec.describe "familles/new", type: :view do
  before(:each) do
    assign(:famille, Famille.new(
      :nom => "MyString"
    ))
  end

  it "renders new famille form" do
    render

    assert_select "form[action=?][method=?]", familles_path, "post" do

      assert_select "input#famille_nom[name=?]", "famille[nom]"
    end
  end
end
