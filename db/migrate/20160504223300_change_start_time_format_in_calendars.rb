class ChangeStartTimeFormatInCalendars < ActiveRecord::Migration
  def change
    change_column :calendars, :start_time, :time
  end
end
