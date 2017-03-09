require 'rails_helper'

RSpec.describe "parentinfos/index", type: :view do
  before(:each) do
    assign(:parentinfos, [
      Parentinfo.create!(
        :courriel => "Courriel",
        :telephone_res => "Numero Tel",
        :nocivique => "Nocivique",
        :rue => "Rue",
        :appartement => "Appartement",
        :ville => "Ville",
        :code_postal => "Code Postal",
        :province => "Province",
        :nom_urgence => "Nom Urgence",
        :numero_urgence => "Numero Urgence",
        :note => "Note",
        :parent_id => 2
      ),
      Parentinfo.create!(
        :courriel => "Courriel",
        :telephone_res => "Numero Tel",
        :nocivique => "Nocivique",
        :rue => "Rue",
        :appartement => "Appartement",
        :ville => "Ville",
        :code_postal => "Code Postal",
        :province => "Province",
        :nom_urgence => "Nom Urgence",
        :numero_urgence => "Numero Urgence",
        :note => "Note",
        :parent_id => 2
      )
    ])
  end

  it "renders a list of parentinfos" do
    render
    assert_select "tr>td", :text => "Courriel".to_s, :count => 2
    assert_select "tr>td", :text => "Numero Tel".to_s, :count => 2
    assert_select "tr>td", :text => "Nocivique".to_s, :count => 2
    assert_select "tr>td", :text => "Rue".to_s, :count => 2
    assert_select "tr>td", :text => "Appartement".to_s, :count => 2
    assert_select "tr>td", :text => "Ville".to_s, :count => 2
    assert_select "tr>td", :text => "Code Postal".to_s, :count => 2
    assert_select "tr>td", :text => "Province".to_s, :count => 2
    assert_select "tr>td", :text => "Nom Urgence".to_s, :count => 2
    assert_select "tr>td", :text => "Numero Urgence".to_s, :count => 2
    assert_select "tr>td", :text => "Note".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
