require 'rails_helper'

RSpec.describe 'Tea Subscription' do
  before :each do
    @customer1 = Customer.create!(first_name: 'Jean-Luc', last_name: 'Picard', email: 'capt.picard@starfleet.com', address: '1600 Academy Ave, San Francisco CA')
    @customer2 = Customer.create!(first_name: 'Will', last_name: 'Riker', email: 'rikers.beard@starfleet.com', address: '1234 Enterprise St, San Francisco CA')
    @tea1 = Tea.create!(title: 'Earl Grey', description: 'Classic English Favorite', temperature: 120, brew_time: 180)
    @tea2 = Tea.create!(title: 'Green Tea', description: 'Calming tea to start your day', temperature: 90, brew_time: 90)
    @tea3 = Tea.create!(title: 'Sleepy Time', description: 'Chamomille and herbs to end your day', temperature: 110, brew_time: 100)
    @subscription1 = CustomerTea.create!(customer_id: @customer1.id, tea_id: @tea1.id, price: 10, status: true, frequency: 1)
    @subscription1 = CustomerTea.create!(customer_id: @customer1.id, tea_id: @tea2.id, price: 15, status: false, frequency: 2)
    @subscription1 = CustomerTea.create!(customer_id: @customer2.id, tea_id: @tea3.id, price: 7, status: true, frequency: 0)
  end

  it 'can return a customers subscriptions' do
    get "/customers/#{@customer1.id}/teas"

    expect(response.status).to be(200)
    parsed = JSON.parse(response.body, symbolize_names: true)[:subscriptions]

    expect(parsed.count).to eq(2)
    expect(parsed.first).to have_key(:frequency)
    expect(parsed.first[:frequency]).to eq('biweekly')
  end

  xit 'can create a new subscription' do
    headers = { 'Content-Type': 'application/json' }
    params = { customer_id: @customer2.id, tea_id: @tea2.id, price: 15, status: true, frequency: 2 }

    post '/customer/'
  end
end
