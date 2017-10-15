require 'rails_helper'

RSpec.describe Artist, type: :model do

  describe "validations" do
   it { is_expected.to validate_presence_of(:name) }
   it { is_expected.to validate_presence_of(:image) }
   it { is_expected.to validate_uniqueness_of(:name) }
  end

  describe ".order_by_name" do
    let!(:artist1) { create :artist, name: "f" }
    let!(:artist2) { create :artist, name: "z" }
    let!(:artist3) { create :artist, name: "a" }

    it "returns a sorted array of artists by names" do
      expect(Artist.order_by_name).to eq([artist3, artist1, artist2])
    end
  end

  describe "association with song" do
    let(:artist) { create :artist, name: "f" }

    it "has many songs" do
      song1 = artist.songs.new(name: "Firstly")
      song2 = artist.songs.new(name: "Secondly")

      expect(artist.songs).to include(song1)
      expect(artist.songs).to include(song2)
    end

  end


end
