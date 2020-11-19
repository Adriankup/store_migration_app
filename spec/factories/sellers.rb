FactoryBot.define do
  factory :seller do
    name { FFaker::Name.first_name }
    address { FFaker::Address.secondary_address }
  end
end
