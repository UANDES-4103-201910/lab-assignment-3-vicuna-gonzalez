class Event < ActiveRecord::Base
  has_many :tickets
  belongs_to :eventvenue

  def most_tickets_sold

  end

  def highest_revenue

  end

end
