class ChangeColumnNull < ActiveRecord::Migration[6.1]
  def change
    change_column_null :events, :time, true
  end
end
