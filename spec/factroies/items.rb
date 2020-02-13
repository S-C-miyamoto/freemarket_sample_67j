FactoryBot.define do
  factory :item do
    name           {"something"}
    state          {"something"}
    price          {1000}
    condition      {"新品、未使用"}
    category_id    {1}
    created_at { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now) }
    shipping
  end
end
