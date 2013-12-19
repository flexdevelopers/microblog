FactoryGirl.define do
  factory :user do
    name     "bob"
    email    "michael@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end