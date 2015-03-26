# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :article do
    title 'abc'
    category_id 1
    content 'def'
  end
end
