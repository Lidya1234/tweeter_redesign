FactoryBot.define do
  Fullname = 'lidya gher'.freeze
  factory :user do
    Username { Faker::Internet.username[1..20] }
    Fullname { Faker::Name.name[1..20] }

    Photo { Rack::Test::UploadedFile.new(Rails.root.join('spec/support/assets/test_photo.jpg'), 'image/jpeg') }
    Coverimage do
      Rack::Test::UploadedFile.new(Rails.root.join('spec/support/assets/test_cover_image.jpg'), 'image/jpeg')
    end
  end
end
