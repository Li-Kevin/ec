class CreateOptionValues < ActiveRecord::Migration
  def change
    create_table :option_values do |t|
      t.string :name
      t.text :description
      t.integer :option_type_id

      t.timestamps null: false
    end
  end
end
