class ChangeDataTypeForCalandars < ActiveRecord::Migration
  def change
    change_column(:calendars, :date, :string)
    change_column(:calendars, :start_time, :string)
    change_column(:calendars, :end_time, :string)
  end
end
