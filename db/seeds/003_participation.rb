Participation.find_or_create_by(id: 1) do |e|
  e.user_id = 1
  e.event_id = 3
end

Participation.find_or_create_by(id: 2) do |e|
  e.user_id = 1
  e.event_id = 1
end

Participation.find_or_create_by(id: 3) do |e|
  e.user_id = 2
  e.event_id = 1
end

Participation.find_or_create_by(id: 4) do |e|
  e.user_id = 3
  e.event_id = 1
end

Participation.find_or_create_by(id: 5) do |e|
  e.user_id = 5
  e.event_id = 1
end

Participation.find_or_create_by(id: 6) do |e|
  e.user_id = 6
  e.event_id = 1
end

Participation.find_or_create_by(id: 7) do |e|
  e.user_id = 8
  e.event_id = 1
end

Participation.find_or_create_by(id: 8) do |e|
  e.user_id = 9
  e.event_id = 1
end

Participation.find_or_create_by(id: 9) do |e|
  e.user_id = 2
  e.event_id = 2 
end

Participation.find_or_create_by(id: 10) do |e|
  e.user_id = 7
  e.event_id = 2
end

Participation.find_or_create_by(id: 11) do |e|
  e.user_id = 8
  e.event_id = 2 
end

Participation.find_or_create_by(id: 12) do |e|
  e.user_id = 9
  e.event_id = 2
end

Participation.find_or_create_by(id: 13) do |e|
  e.user_id = 3
  e.event_id = 3
end

Participation.find_or_create_by(id: 14) do |e|
  e.user_id = 5
  e.event_id = 3
end

Participation.find_or_create_by(id: 15) do |e|
  e.user_id = 6
  e.event_id = 3
end

Participation.find_or_create_by(id: 16) do |e|
  e.user_id = 1
  e.event_id = 4
end

Participation.find_or_create_by(id: 17) do |e|
  e.user_id = 2
  e.event_id = 4
end

Participation.find_or_create_by(id: 18) do |e|
  e.user_id = 5
  e.event_id = 4
end

Participation.find_or_create_by(id: 19) do |e|
  e.user_id = 6
  e.event_id = 4
end

Participation.find_or_create_by(id: 20) do |e|
  e.user_id = 4
  e.event_id = 5
end

Participation.find_or_create_by(id: 21) do |e|
  e.user_id = 3
  e.event_id = 6
end

Participation.find_or_create_by(id: 22) do |e|
  e.user_id = 1
  e.event_id = 6
end

Participation.find_or_create_by(id: 23) do |e|
  e.user_id = 7
  e.event_id = 7
end

Participation.find_or_create_by(id: 24) do |e|
  e.user_id = 9 
  e.event_id = 8
end

Participation.find_or_create_by(id: 25) do |e|
  e.user_id = 8
  e.event_id = 8
end

Participation.find_or_create_by(id: 26) do |e|
  e.user_id = 3
  e.event_id = 8
end

Participation.find_or_create_by(id: 27) do |e|
  e.user_id = 5
  e.event_id = 9
end

Participation.find_or_create_by(id: 28) do |e|
  e.user_id = 8
  e.event_id = 9
end

Participation.find_or_create_by(id: 29) do |e|
  e.user_id = 1
  e.event_id = 10
end

Participation.find_or_create_by(id: 30) do |e|
  e.user_id = 5
  e.event_id = 10
end

Participation.find_or_create_by(id: 31) do |e|
  e.user_id = 1
  e.event_id = 11
end

Participation.find_or_create_by(id: 32) do |e|
  e.user_id = 9
  e.event_id = 11
end

ActiveRecord::Base.connection.tables.each do |t|
  ActiveRecord::Base.connection.reset_pk_sequence!(t)
end
