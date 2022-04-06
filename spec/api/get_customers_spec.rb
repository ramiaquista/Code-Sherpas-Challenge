require 'rails_helper'
describe "get all customers route", :type => :request do
  let!(:customers) {FactoryBot.create_list(:random_customer, 10)}
before {get '/customers'}
it 'returns all questions' do
    expect(JSON.parse(response.body).size).to eq(10)
  end
it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end