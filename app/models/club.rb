class Club < ApplicationRecord
  belongs_to :user
  has_many :club_registrations
end
