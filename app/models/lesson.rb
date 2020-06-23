class Lesson < ApplicationRecord
  belongs_to :user
  has_many :bookings
  include PgSearch::Model
  pg_search_scope :search_by_language,
    against: :language
    # using: {
    #   tsearch: { prefix: true }


LANGUAGES = ["French", "Spanish", "Italian", "English", "German", "Japanese", "Arabic", " Mandarin"]
LEVELS = ["Beginner", "Intermediate", "Advanced"]
TIME = ["30 minutes", "1 hour", "2 hours", "> 2 hours"]

  $languages = LANGUAGES
  $levels = LEVELS
  $time = TIME
end
