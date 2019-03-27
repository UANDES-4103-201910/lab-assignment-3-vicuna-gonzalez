class Eventvenue < ActiveRecord::Base
  has_many :events

  def last_attendance
  end
end
