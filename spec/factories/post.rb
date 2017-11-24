FactoryBot.define do
  factory :post, class: Post do
    content "hogehogehoge"
    association :post, factory: :user
  end
end