require 'rails_helper'

describe "Visitor viewing the list of artists" do

  let!(:artist1) { create :artist, name: "supercalifragi"}
  let!(:artist2) { create :artist, name: "Stupidify"}

  it "shows all artists" do
    visit artists_url
    expect(page).to have_text("supercalifragi")
    expect(page).to have_text("Stupidify")
  end
end
