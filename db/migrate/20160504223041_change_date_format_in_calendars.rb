class ChangeDateFormatInCalendars < ActiveRecord::Migration
  def change
    change_column :calendars, :date, :date
  end
end
