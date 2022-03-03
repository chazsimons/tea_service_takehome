# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
customer1 = Customer.create!(first_name: 'Jean-Luc', last_name: 'Picard', email: 'capt.picard@starfleet.com', address: '1600 Academy Ave, San Francisco CA')
customer2 = Customer.create!(first_name: 'Will', last_name: 'Riker', email: 'rikers.beard@starfleet.com', address: '1234 Enterprise St, San Francisco CA')
tea1 = Tea.create!(title: 'Earl Grey', description: 'Classic English Favorite', temperature: 120, brew_time: 180)
tea2 = Tea.create!(title: 'Green Tea', description: 'Calming tea to start your day', temperature: 90, brew_time: 90)
tea3 = Tea.create!(title: 'Sleepy Time', description: 'Chamomille and herbs to end your day', temperature: 110, brew_time: 100)
subscription1 = Subscription.create!(customer_id: customer1.id, tea_id: tea1.id, price: 10, active: true, frequency: 1)
subscription2 = Subscription.create!(customer_id: customer1.id, tea_id: tea2.id, price: 15, active: false, frequency: 2)
subscription3 = Subscription.create!(customer_id: customer2.id, tea_id: tea3.id, price: 7, active: true, frequency: 0)
