require 'rails_helper'

RSpec.describe "enfants/edit", type: :view do
  before(:each) do
    @enfant = assign(:enfant, Enfant.create!(
      :age => 1,
      :residence => "MyString",
      :nom => "MyString",
      :demande_id => 1
    ))
  end

  it "renders the edit enfant form" do
    render

    assert_select "form[action=?][method=?]", enfant_path(@enfant), "post" do

      assert_select "input#enfant_age[name=?]", "enfant[age]"

      assert_select "input#enfant_residence[name=?]", "enfant[residence]"

      assert_select "input#enfant_nom[name=?]", "enfant[nom]"

      assert_select "input#enfant_demande_id[name=?]", "enfant[demande_id]"
    end
  end
end
