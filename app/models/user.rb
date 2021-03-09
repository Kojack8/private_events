class User < ApplicationRecord
  has_many :events
  has_many :attended_events, class_name: 'Events'
  
  
end
