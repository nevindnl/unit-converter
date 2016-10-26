class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :name
      t.string :symbol, null: false
      t.string :unit_type, null: false
      t.string :si_unit, null: false
      t.float :si_factor, null: false

      t.timestamps null: false
    end

      add_index :units, :name
      add_index :units, :symbol, unique: true
  end
end
