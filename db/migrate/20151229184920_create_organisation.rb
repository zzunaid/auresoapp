class CreateOrganisation < ActiveRecord::Migration
  def up
    execute <<-SQL
      CREATE TYPE organisation_types AS ENUM ('showroom', 'service', 'dealer');
    SQL
    create_table :organisations do |t|
      t.string :name
      t.string :public_name
      t.column :type, :organisation_types
    end
  end

  def down
    drop_table :organisations
    execute <<-SQL
      DROP TYPE organisation_types;
    SQL
  end
end
