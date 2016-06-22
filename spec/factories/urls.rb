FactoryGirl.define do
  factory :url do
    title 'Test'
    url 'http://www.test.com'
    privacy :private_access
    current_hash ''
    factory :public_url do
      privacy :public_access
    end
  end
end
