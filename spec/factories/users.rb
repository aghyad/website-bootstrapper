# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    first_name 'Aghyad'
    last_name 'Saleh'
    email 'asaleh@clickhere.com'
    password 'aaaaaaaa'
    password_confirmation 'aaaaaaaa'
  end
end
