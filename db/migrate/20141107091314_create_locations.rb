class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
    	t.float :latitud
    	t.float :longitud

      t.timestamps
    end
  end
end
