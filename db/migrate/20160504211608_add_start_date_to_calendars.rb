class AddStartDateToCalendars < ActiveRecord::Migration
  def change
    add_column :calendars, :start_date, :date
  end
end
