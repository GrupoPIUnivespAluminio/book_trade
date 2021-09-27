FactoryBot.define do
  factory :conversation do
    content { "MyText" }
    book
    sender { nil }
    receiver { nil }
  end
end
