class User < ActiveRecord::Base
  has_many :emails, dependent: :destroy
  has_many :phones, dependent: :destroy
  has_many :orders, dependent: :destroy


  def most_expensive_ticket_bought()
    orders=Order.where(user_id: id)
    tickets=[]
    orders.each do |order|
      tickets.append(Ticket.find(order.ticket_id))
    end
    max= 0
    tickets.each do |ticket|
      if max < ticket.price
        max = ticket.price
      end
    end
    max
  end

  def most_expensive_ticket_bought_between(date1,date2)
  end

  def last_event()
  end
end
