class AddInviteesToEvents < ActiveRecord::Migration[6.1]
  def change
    add_reference :events, :invitees, foreign_key: { to_table: 'events'}
  end
end
