require 'rails_helper'
describe 'PUT /customers/:id' do
  before(:each) do
    @customer = FactoryBot.create(:random_customer)
  end
  it 'updates a customer' do
    @new_customer_name = Faker::Name.first_name
    @new_customer_surname = Faker::Name.last_name
    put "/customers/#{@customer.id}", params: { name: @new_customer_name, surname: @new_customer_surname }
    expect(response.status).to eq(200)
    expect(Customer.find(@customer.id).name).to eq(@new_customer_name)
    expect(Customer.find(@customer.id).surname).to eq(@new_customer_surname)
  end
end
