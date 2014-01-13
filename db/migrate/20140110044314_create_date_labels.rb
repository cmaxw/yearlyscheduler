class CreateDateLabels < ActiveRecord::Migration
  def change
    create_table :date_labels do |t|
      t.date :day
      t.references :label_color, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
