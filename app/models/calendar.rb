require 'csv'

class Calendar < ActiveRecord::Base

  belongs_to :user

  def self.import(file)
    content = File.read(file.path, headers:true) do |row|
    # CSV.foreach(file.path, headers: true) do |row|
      Calendar.create!(row.to_hash)
    end
  end
end

