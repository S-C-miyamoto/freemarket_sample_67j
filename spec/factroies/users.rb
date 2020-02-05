FactoryBot.define do
  factory :user do
    nickname              {"abe"}
    email                 {"kkk@gmail.com"}
    password              {"0000000"}
    last_name             {"安倍"}
    first_name            {"晋三"}
    last_name_kana        {"アベ"}
    first_name_kana       {"シンゾウ"}
    birth_year            {"1994"}
    birth_month           {"05"}
    birth_day             {"31"}
    phone_number          {"09088888888"}
  end
end
