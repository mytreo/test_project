FactoryGirl.define do
  factory :card do
    text_ru = Faker::Lorem.sentence(5)
    text_en = Faker::Lorem.sentence(5)
    sequence(:review_date){ |n| n.minutes.ago}
    # Date.today

    

  end
  
 
end