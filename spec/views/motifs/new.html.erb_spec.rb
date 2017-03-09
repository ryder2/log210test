require 'rails_helper'

RSpec.describe "motifs/new", type: :view do
  before(:each) do
    assign(:motif, Motif.new(
      :nom => "MyString"
    ))
  end

  it "renders new motif form" do
    render

    assert_select "form[action=?][method=?]", motifs_path, "post" do

      assert_select "input#motif_nom[name=?]", "motif[nom]"
    end
  end
end
