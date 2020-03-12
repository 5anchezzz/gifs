class Gif < ApplicationRecord
  include ImageUploader::Attachment(:image)
  belongs_to :user

  acts_as_taggable

  scope :sorted, -> { order(created_at: :desc)}

  validates :image_data, presence: true

  def self.random
    order("RANDOM()").first
  end

end
