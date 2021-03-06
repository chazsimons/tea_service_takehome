require 'rails_helper'

RSpec.describe Customer, type: :model do
  describe 'relationships' do
    it { should have_many(:customer_teas) }
    it { should have_many(:teas).through(:customer_teas) }
  end
end
