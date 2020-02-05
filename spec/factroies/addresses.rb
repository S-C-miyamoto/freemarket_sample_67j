FactoryBot.define do

  factory :address do
    family_name             {"安倍"}
    first_name              {"晋三"}
    family_name_katakana    {"アベ"}
    first_name_katakana     {"シンゾウ"}
    zip_code                {"123-4567"}
    prefecture_id           {"47"}
    city                    {"テスト市"}
    block                   {"テスト町1−1−1"}
    building                {"テストマンション101"}
    telephone_number        {"09012345678"}
  end

end