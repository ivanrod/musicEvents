class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
    	t.decimal :latitud
    	t.decimal :longitud

      t.timestamps
    end
  end
end
