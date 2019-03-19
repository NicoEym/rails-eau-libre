class SwimRace < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  geocoded_by :city_name
  after_validation :geocode, if: :will_save_change_to_city_name?
  has_many :swim_events, dependent: :destroy
end
