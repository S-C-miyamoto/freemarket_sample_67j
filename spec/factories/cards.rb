FactoryBot.define do

  factory :card do
    id           {1}
    user_id      {1}
    customer_id  {1}
    card_id      {1}
    created_at   { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now) }
    user
  end
  
end
