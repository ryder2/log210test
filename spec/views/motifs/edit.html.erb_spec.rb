require 'rails_helper'

RSpec.describe "motifs/edit", type: :view do
  before(:each) do
    @motif = assign(:motif, Motif.create!(
      :nom => "MyString"
    ))
  end

  it "renders the edit motif form" do
    render

    assert_select "form[action=?][method=?]", motif_path(@motif), "post" do

      assert_select "input#motif_nom[name=?]", "motif[nom]"
    end
  end
end
