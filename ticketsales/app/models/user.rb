class User < ActiveRecord::Base
  has_many :emails, dependent: :destroy
  has_many :phones, dependent: :destroy
  has_many :orders, dependent: :destroy
end
