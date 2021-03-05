class Event < ApplicationRecord
  belongs_to :name, class_name: "User"
  has_many, :user, :foreign_key => 'attendees'
end
