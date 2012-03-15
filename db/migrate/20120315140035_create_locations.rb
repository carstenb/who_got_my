class CreateLocations < ActiveRecord::Migration
  def up
    create_table :locations do |t|
      t.string :title
      t.string :lang
      t.string :lat
      
      t.timestamps
    end
  end

  def down
  drop_table :locations
  end
end
