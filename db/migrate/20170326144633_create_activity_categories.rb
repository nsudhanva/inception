class CreateActivityCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :activity_categories do |t|
      t.integer :activity_id
      t.integer :category_id

      t.timestamps
    end
  end
end
