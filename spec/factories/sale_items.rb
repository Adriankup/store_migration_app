FactoryBot.define do
  factory :sale_item do
    buyer { "MyString" }
    sale { nil }
    quantity { 1 }
    product { nil }
    seller { nil }
  end
end
