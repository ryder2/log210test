require 'rails_helper'

RSpec.describe "enfants/new", type: :view do
  before(:each) do
    assign(:enfant, Enfant.new(
      :date_naissance => "2001-01-01",
      :residence => "MyString",
      :nom => "MyString",
      :demande_id => 1
    ))
  end

  it "renders new enfant form" do
    render

    assert_select "form[action=?][method=?]", enfants_path, "post" do

      assert_select "input#enfant_residence[name=?]", "enfant[residence]"

      assert_select "input#enfant_nom[name=?]", "enfant[nom]"

      assert_select "input#enfant_demande_id[name=?]", "enfant[demande_id]"
    end
  end
end
