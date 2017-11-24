FactoryBot.define do
  factory :comment, class: Comment do
    content "hogehogehoge"
    association :comment, factory: [:user, :post]
  end
end