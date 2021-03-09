class User < ApplicationRecord
  has_many :event, class_name: 'Event', foreign_key: :event_id 
  
end
