class Article < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }
  extend FriendlyId
  friendly_id :slug, use: [:slugged, :finders]
end
