class AddUserIdOnLabelColors < ActiveRecord::Migration
  def change
    add_column :label_colors, :user_id, :integer
    add_index :label_colors, :user_id
  end
end
