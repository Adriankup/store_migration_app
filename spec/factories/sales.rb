FactoryBot.define do
  factory :sale do
    buyer { "MyString" }
    quantity { 1 }
    product { nil }
    seller { nil }
  end
end
