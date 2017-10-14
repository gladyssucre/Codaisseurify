require 'rails_helper'

describe "Navigating songs" do

  let!(:artist) { create :artist, name: "supercalifragi"}
  let!(:song) { create :song, artist: artist}

  it "allows navigation from the listing page to the songs page" do
    visit artist_url

    click_link "supercalifragi"

    expect(current_path).to eq(artist/songs_path(artist))
  end
end
