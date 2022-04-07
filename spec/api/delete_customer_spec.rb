require 'rails_helper'
describe 'delete customer route' do
  before(:each) do
    @customer_one = FactoryBot.create(:random_customer)
    @customer_two = FactoryBot.create(:random_customer)
  end
  it 'should delete the customer' do
    get '/customers'
    expect(response.status).to eq(200)
    expect(JSON.parse(response.body)).to eq([YAML.safe_load(@customer_one.to_json),
                                             YAML.safe_load(@customer_two.to_json)])
    delete "/customers/#{@customer_one.id}"
    expect(response.status).to eq(200)
    get '/customers'
    expect(JSON.parse(response.body)).to eq([YAML.safe_load(@customer_two.to_json)])
  end
end
