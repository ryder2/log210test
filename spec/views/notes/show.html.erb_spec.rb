require 'rails_helper'

RSpec.describe "notes/show", type: :view do
  before(:each) do
    @note = assign(:note, Note.create!(
      :texte => "Texte",
      :famille_id => 2,
      :users_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Texte/)
  end
end
