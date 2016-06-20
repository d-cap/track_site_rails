FactoryGirl.define do
  factory :url do
    title "Test"
    url "http://www.test.com"
    privacy 1
    current_hash ""
    factory :public_url do
      privacy 0
    end
  end
end
