require 'rails_helper'
describe "post a customer route", :type => :request do
before do
    post '/customers', params: { :name => 'Lebron', :surname => 'James', :email => 'lebron@mail.com', :birthdate => '04/04/2000' }
  end
it 'returns the customer\'s name' do
    expect(JSON.parse(response.body)['name']).to eq('Lebron')
  end
it 'returns the customer\'s surname' do
    expect(JSON.parse(response.body)['surname']).to eq('James')
  end
it 'returns the question\'s email' do
    expect(JSON.parse(response.body)['email']).to eq('lebron@mail.com')
  end
it 'returns the question\'s birthdate' do
    expect(JSON.parse(response.body)['birthdate']).to eq('04/04/2000')
  end
it 'returns a created status' do
    expect(response).to have_http_status(:ok)
  end
end