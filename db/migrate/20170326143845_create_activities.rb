class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.string :title
      t.text :desc
      t.datetime :start_date
      t.datetime :end_date
      t.boolean :is_completed
      t.integer :routine_id

      t.timestamps
    end
  end
end
