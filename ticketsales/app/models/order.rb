class Order < ActiveRecord::Base
  has_one :ticket
  belongs_to :user
end
