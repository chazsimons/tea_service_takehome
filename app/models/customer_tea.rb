class CustomerTea < ApplicationRecord
  belongs_to :customer
  belongs_to :tea
  enum status: [:weekly, :biweekly, :monthly]
end
