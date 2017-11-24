FactoryBot.define do
  factory :user, class: User do
    name "hoge"
    image "aaa"
    email "hogehoge@fugafuga.com"
    role 1
    document "hellohello"
    l_price 500
  end
end