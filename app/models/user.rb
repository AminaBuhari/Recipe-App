class User < ApplicationRecord
  has_many :foods, dependent: :destroy
  has_many :recipe, dependent: :destroy

  validates :name, presence: true
end