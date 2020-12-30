FactoryBot.define do
 
    Fullname = 'lidya gher'
    factory :user do
     
      Username { Faker::Internet.username[1..20] }
      Fullname { Faker::Name.name[1..20] }
    #   Photo '/support/assets/test_photo.jpg'
    #   Cover_image '/support/assets/ test_cover_image.jpg'
    
    Photo { Rack::Test::UploadedFile.new(Rails.root.join('spec/support/assets/test_photo.jpg'), 'image/jpeg') }
    Coverimage { Rack::Test::UploadedFile.new(Rails.root.join('spec/support/assets/test_cover_image.jpg'), 'image/jpeg') }
    
    #   after(:build) do |user|
    #     user.Photo.attach(io: File.open(Rails.root.join('spec', 'support','assets', 'test_photo.jpg')), filename: 'test_photo.jpg', content_type: 'image/jpg')
    #     user.Cover_image.attach(io: File.open(Rails.root.join('spec', 'support','assets', 'test_cover_image.jpg')), filename: 'test_cover_image.jpg', content_type: 'image/jpg')
    #   end
    end
  end