FactoryBot.define do
  factory :note do
    content { "MyText" }
    customer { nil }
    user { nil }
  end
end
