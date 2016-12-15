class Location < ActiveRecord::Base
  has_many :pubs
  geocoded_by :city
  after_validation :geocode, :if => :city_changed?
   validates :city, presence: true
end
