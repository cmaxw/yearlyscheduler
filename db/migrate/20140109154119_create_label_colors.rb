class CreateLabelColors < ActiveRecord::Migration
  def change
    create_table :label_colors do |t|
      t.string :name
      t.string :color

      t.timestamps
    end
  end
end
