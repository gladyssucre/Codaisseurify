class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  validates :image, presence: true

  def self.order_by_name
    order :name
  end

end
