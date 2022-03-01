class CustomerTea < ApplicationRecord
  belongs_to :customer
  belongs_to :tea
  enum frequency: [:weekly, :biweekly, :monthly]
end
