class User < ApplicationRecord
  has_one_attached :avatar

  validates :avatar, attached: true, content_type: "image/png"
  validates :name, presence: true, uniqueness: true
end
