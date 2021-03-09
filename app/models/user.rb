class User < ApplicationRecord
  has_many :events
  has_many :participation
  has_many :attended_events, through: :participation, source: :event
  
  
end
