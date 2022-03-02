require 'rails_helper'

RSpec.describe 'Tea Subscription' do
  before :each do
    @customer1 = Customer.create!(first_name: 'Jean-Luc', last_name: 'Picard', email: 'capt.picard@starfleet.com', address: '1600 Academy Ave, San Francisco CA')
    @customer2 = Customer.create!(first_name: 'Will', last_name: 'Riker', email: 'rikers.beard@starfleet.com', address: '1234 Enterprise St, San Francisco CA')
    @tea1 = Tea.create!(title: 'Earl Grey', description: 'Classic English Favorite', temperature: 120, brew_time: 180)
    @tea2 = Tea.create!(title: 'Green Tea', description: 'Calming tea to start your day', temperature: 90, brew_time: 90)
    @tea3 = Tea.create!(title: 'Sleepy Time', description: 'Chamomille and herbs to end your day', temperature: 110, brew_time: 100)
    @subscription1 = Subscription.create!(customer_id: @customer1.id, tea_id: @tea1.id, price: 10, active: true, frequency: 1)
    @subscription2 = Subscription.create!(customer_id: @customer1.id, tea_id: @tea2.id, price: 15, active: false, frequency: 2)
    @subscription3 = Subscription.create!(customer_id: @customer2.id, tea_id: @tea3.id, price: 7, active: true, frequency: 0)
  end

  it 'can return a customers subscriptions' do
    get "/customers/#{@customer1.id}/teas"

    expect(response.status).to be(200)
    parsed = JSON.parse(response.body, symbolize_names: true)[:subscriptions]

    expect(parsed.count).to eq(2)
    expect(parsed.first).to have_key(:frequency)
    expect(parsed.first[:frequency]).to eq('biweekly')
    expect(parsed.second).to have_key(:active)
    expect(parsed.second[:active]).to be(false)
  end

  it 'returns an error message if not found' do
    get "/customers/#{'400'}/teas"

    expect(response.status).to eq(404)
    parsed = JSON.parse(response.body, symbolize_names: true)[:errors]

    expect(parsed).to eq('No customer found with that ID')
  end

  it 'can create a new subscription' do
    params = { tea_id: @tea2.id, price: 15, active: true, frequency: 'weekly' }

    post "/customers/#{@customer2.id}/teas", params: params

    expect(response.status).to eq(201)

    new_sub = JSON.parse(response.body, symbolize_names: true)[:subscription]
    expect(new_sub).to have_key(:active)
    expect(new_sub[:active]).to eq(true)
    expect(new_sub).to have_key(:customer_id)
    expect(new_sub[:customer_id]).to eq(@customer2.id)
    expect(new_sub).to have_key(:tea_id)
    expect(new_sub[:tea_id]).to eq(@tea2.id)
  end

  it 'returns an error if all attributes are not provided' do
    #passing params without price attribute
    params = { tea_id: @tea2.id, active: true, frequency: 'weekly' }

    post "/customers/#{@customer2.id}/teas", params: params

    expect(response.status).to eq(400)
    error = JSON.parse(response.body, symbolize_names: true)[:errors].first
    expect(error).to eq("Price can't be blank")
  end

  it 'can cancel a subscription' do
    params = { active: false }

    patch "/subscription/#{@subscription1.id}", params: params

    expect(response.status).to eq(200)
    parsed = JSON.parse(response.body, symbolize_names: true)[:subscription]

    expect(parsed).to eq("You've cancelled this subscription")

    get "/customers/#{@customer1.id}/teas"
    tea_subs = JSON.parse(response.body, symbolize_names: true)[:subscriptions]

    expect(tea_subs.count).to eq(2)
    expect(tea_subs.first[:active]).to eq(false)
  end

end
