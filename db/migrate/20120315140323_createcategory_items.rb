class CreatecategoryItems < ActiveRecord::Migration
  def up
    create_table :categories_items, :id => false do |t|
      t.references :category, :item
    end
  end

  def down
  end
end
