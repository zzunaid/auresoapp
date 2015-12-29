class CreateModelType < ActiveRecord::Migration
  def up
    create_table :model_types do |t|
      t.string :name
      t.string :model_type_slug
      t.string :model_type_code
      t.integer :base_price
    end
  end

  def down
    drop_table :model_types
  end
end
