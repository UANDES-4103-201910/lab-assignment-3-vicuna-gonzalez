class User < ActiveRecord::Base
  has_many :emails, dependent: :destroy
  has_many :phones, dependent: :destroy
  has_many :orders, dependent: :destroy

  def most_expensive_ticket_bought()
  end
  def most_expensive_ticket_bought_between(date1,date2)
  end
  def last_event()
  end
end
