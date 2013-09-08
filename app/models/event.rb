class Event < ActiveRecord::Base
  attr_accessible :city, :duration, :provice, :purpose, :start_date, :start_time, :street_address_line1, :street_address_line2, :topic
end
