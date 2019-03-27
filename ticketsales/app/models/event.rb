class Event < ActiveRecord::Base
  has_many :tickets
  belongs_to :eventvenue
end
