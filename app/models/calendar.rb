require 'csv'

class Calendar < ActiveRecord::Base
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Calendar.create!(Hash[row])
    end
  end
end
