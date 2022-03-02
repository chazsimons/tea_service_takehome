class CustomerTea < ApplicationRecord
  belongs_to :customer
  belongs_to :tea
  validates :customer_id, presence: true
  validates :tea_id, presence: true
  validates :frequency, presence: true
  validates :price, presence: true
  enum frequency: [:weekly, :biweekly, :monthly]
end
