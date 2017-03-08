require 'rails_helper'

RSpec.describe "parentinfos/new", type: :view do
  before(:each) do
    assign(:parentinfo, Parentinfo.new(
      :courriel => "MyString",
      :numero_tel => "MyString",
      :nocivique => "MyString",
      :rue => "MyString",
      :appartement => "MyString",
      :ville => "MyString",
      :code_postal => "MyString",
      :province => "MyString",
      :nom_urgence => "MyString",
      :numero_urgence => "MyString",
      :note => "MyString",
      :parent_id => 1
    ))
  end

  it "renders new parentinfo form" do
    render

    assert_select "form[action=?][method=?]", parentinfos_path, "post" do

      assert_select "input#parentinfo_courriel[name=?]", "parentinfo[courriel]"

      assert_select "input#parentinfo_numero_tel[name=?]", "parentinfo[numero_tel]"

      assert_select "input#parentinfo_nocivique[name=?]", "parentinfo[nocivique]"

      assert_select "input#parentinfo_rue[name=?]", "parentinfo[rue]"

      assert_select "input#parentinfo_appartement[name=?]", "parentinfo[appartement]"

      assert_select "input#parentinfo_ville[name=?]", "parentinfo[ville]"

      assert_select "input#parentinfo_code_postal[name=?]", "parentinfo[code_postal]"

      assert_select "input#parentinfo_province[name=?]", "parentinfo[province]"

      assert_select "input#parentinfo_nom_urgence[name=?]", "parentinfo[nom_urgence]"

      assert_select "input#parentinfo_numero_urgence[name=?]", "parentinfo[numero_urgence]"

      assert_select "input#parentinfo_note[name=?]", "parentinfo[note]"

      assert_select "input#parentinfo_parent_id[name=?]", "parentinfo[parent_id]"
    end
  end
end
