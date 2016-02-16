class CreateProductOptionTypeships < ActiveRecord::Migration
  def change
    create_table :product_option_typeships do |t|
      t.integer :product_id
      t.integer :option_type_id

      t.timestamps null: false
    end
  end
end
