class Customer < ApplicationRecord
  has_many :customer_teas
  has_many :teas, through: :customer_teas
end
