class CreateRoutines < ActiveRecord::Migration[5.0]
  def change
    create_table :routines do |t|
      t.string :title
      t.text :desc
      t.datetime :start_date
      t.datetime :end_date
      t.integer :routine_type_id
      t.integer :days

      t.timestamps
    end
  end
end
