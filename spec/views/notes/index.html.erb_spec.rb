require 'rails_helper'

RSpec.describe "notes/index", type: :view do
  before(:each) do
    assign(:notes, [
      Note.create!(
        :texte => "Texte"
      ),
      Note.create!(
        :texte => "Texte"
      )
    ])
  end

  it "renders a list of notes" do
    render
    assert_select "tr>td", :text => "Texte".to_s, :count => 2
  end
end
