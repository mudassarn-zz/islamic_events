class Speaker < ActiveRecord::Base
  has_many :events, dependent: :destroy
  attr_accessible :name, :profile
  ALPHA_REGEX=/[A-Za-z]+/
  validates :name, presence: true#, format: { with: ALPHA_REGEX }
  validates :profile, presence: true
end
