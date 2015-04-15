FactoryGirl.define do

  sequence :first_name do |n|
    "first_name-#{n}"
  end

  sequence :user_id do |n|
    "userid-#{n}"
  end

  sequence :email do |n|
    "people#{n}@laposte.net"
  end

  factory :user do
    password 'trucmuche'
    password_confirmation 'trucmuche'
    email { generate(:email) }
    first_name { generate(:first_name) }
  end
end
