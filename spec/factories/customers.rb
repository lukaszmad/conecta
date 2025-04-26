FactoryBot.define do
  factory :customer do
    name { "MyString" }
    email { "MyString" }
    phone { "MyString" }
    company { "MyString" }
    status { "MyString" }
    user { nil }
  end
end
