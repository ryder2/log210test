require 'rails_helper'

RSpec.describe "parentinfos/show", type: :view do
  before(:each) do
    @parentinfo = assign(:parentinfo, Parentinfo.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Courriel/)
    expect(rendered).to match(/Numero Tel/)
    expect(rendered).to match(/Nocivique/)
    expect(rendered).to match(/Rue/)
    expect(rendered).to match(/Appartement/)
    expect(rendered).to match(/Ville/)
    expect(rendered).to match(/Code Postal/)
    expect(rendered).to match(/Province/)
    expect(rendered).to match(/Nom Urgence/)
    expect(rendered).to match(/Numero Urgence/)
    expect(rendered).to match(/Note/)
    expect(rendered).to match(/2/)
  end
end
