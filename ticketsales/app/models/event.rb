class Event < ActiveRecord::Base
  has_many :tickets
  belongs_to :eventvenue

  def most_tickets_sold
    max=0
    eventmax=0
    Event.all.each do |event|
      tickets=Ticket.where(event_id: event.id)
      orders=[]
      tickets.each do |ticket|
        orders=orders+(Order.where(ticket_id: ticket.id))
      end
      sold=0
      orders.each do |ord|
        sold=sold+ord.amount
      end
      if sold>=max
        max=sold
        eventmax=event
      end
    end
    eventmax
  end

  def highest_revenue

  end

end
