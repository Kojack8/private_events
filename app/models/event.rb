class Event < ApplicationRecord
  belongs_to :name, class_name: 'User', foreign_key: :user_id
  has_many :attendees, class_name: 'User', foreign_key: :user_id
end
