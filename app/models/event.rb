class Event < ApplicationRecord
  belongs_to :host, class_name: 'User', foreign_key: :user_id
  has_many :participation
  has_many :attendees, through: :participation, source: :user

  scope :upcoming, -> { where('time > ?', Time.now).order(time: :desc)}
  scope :past, -> { where('time < ?', Time.now).order(:time)}
end
