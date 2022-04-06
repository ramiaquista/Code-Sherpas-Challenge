FactoryBot.define do
  factory :random_customer, class: Customer do
      name { Faker::Name.first_name}
      surname { Faker::Name.last_name}
      email { Faker::Internet.email}
      birthdate { Faker::Date.birthday(min_age: 18, max_age: 75)}
    end
  end