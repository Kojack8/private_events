class RemoveEventsFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_reference :users, :event, null: false, foreign_key: true
  end
end
