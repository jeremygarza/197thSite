class RemoveFieldStartDateFromTableCalendars < ActiveRecord::Migration
  def change
    remove_column :calendars, :start_date, :date
  end
end
