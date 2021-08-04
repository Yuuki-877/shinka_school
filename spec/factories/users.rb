FactoryBot.define do
  factory :user do
    sequence(:name) { |n| "TEST_NAME#{n}"}
    name_kana { "テストネーム"}
    sequence(:nickname) { |n| "ニックネーム#{n}"}
    phone { "09011111111" }
    birthday { "2000/1/1" }
    gender { 0 }
    work_place { "鹿児島大学" }
    self_introduction { "よろしくお願いします" }
    password { "testpass" }
    password_confirmation { "testpass" }
    sequence(:email) { |n| "TEST#{n}@example.com"}

    association :job
    association :pref
  end
end