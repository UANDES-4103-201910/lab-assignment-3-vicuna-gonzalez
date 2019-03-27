class User < ActiveRecord::Base
  has_many :emails, dependent: :destroy
  has_many :phones, dependent: :destroy
  has_many :orders, dependent: :destroy


  def orders_between(date1,date2)
    orders=Order.where("created_at < ? AND created_at > ? AND user_id== ?", DateTime.parse(date1), DateTime.parse(date2), id)
    orders
  end
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

  def most_expensive_ticket_bought_between(min_date,max_date)
    orders=Order.where("created_at < ? AND created_at > ? AND user_id== ?", DateTime.parse(max_date), DateTime.parse(min_date), id)
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

  def last_event()
    orders=Order.where(user_id: id)
    Event.find((Ticket.find(orders.last.ticket_id)).event_id)
  end
end
