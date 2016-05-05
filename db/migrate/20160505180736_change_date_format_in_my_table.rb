class ChangeDateFormatInMyTable < ActiveRecord::Migration
  def change
    change_column :calendars, :dates, :date
  end
end
