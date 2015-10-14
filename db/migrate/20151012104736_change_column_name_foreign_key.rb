class ChangeColumnNameForeignKey < ActiveRecord::Migration
  def change
    rename_column :shift_details, :users_id, :user_id
  end
end
