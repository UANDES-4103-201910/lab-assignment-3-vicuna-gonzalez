class Eventvenue < ActiveRecord::Base
  has_many :events

  def last_attendance
    events=Event.where(eventvenue_id: id)
    last_event=events.order('datetime DESC').first
    tickets=Ticket.where(event_ids =last_event.id)
    attendance=0
    tickets.each do |ticket|
      orders=Order.where(ticket_id=ticket.id)
      orders.each do |ord|
        attendance= attendance+ord.amount
      end
    end
    attendance
  end

end
