class Tea < ApplicationRecord
  has_many :customer_teas
  has_many :customers, through: :customer_teas
end
