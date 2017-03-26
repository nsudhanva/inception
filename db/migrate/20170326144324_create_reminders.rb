class CreateReminders < ActiveRecord::Migration[5.0]
  def change
    create_table :reminders do |t|
      t.string :title
      t.text :desc
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
