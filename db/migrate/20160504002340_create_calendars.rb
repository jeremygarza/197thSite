class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
      t.integer :date
      t.integer :start_time
      t.string :audience
      t.string :event_notes
      t.string :instructor
      t.string :uniform
      t.string :location
      t.string :risk_level
      t.string :reference

      t.timestamps null: false
    end
  end
end
