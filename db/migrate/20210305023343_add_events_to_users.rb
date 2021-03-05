class AddEventsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :event, foreign_key: true
  end
end
