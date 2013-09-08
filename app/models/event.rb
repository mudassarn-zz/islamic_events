class Event < ActiveRecord::Base
  attr_accessible :city, :duration, :province, :purpose, :start_date, :street_address_line1, :street_address_line2, :topic
  validates :topic, presence: true
  validates :purpose, presence: true
  validates :street_address_line1, presence: true
  validates :city, presence: true
  validates :province, presence: true
  validates :start_date, presence: true
  validates :duration, presence: true, numericality: {greater_than: 0}
end
