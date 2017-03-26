class CreateTimers < ActiveRecord::Migration[5.0]
  def change
    create_table :timers do |t|
      t.string :title
      t.text :desc
      t.datetime :end_date

      t.timestamps
    end
  end
end
