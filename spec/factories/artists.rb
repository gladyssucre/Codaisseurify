FactoryGirl.define do
  factory :artist do
    name    { Faker::Name.first_name }
    image   "https://res.cloudinary.com/drp9nvz64/image/upload/t_media_lib_thumb/v1507967049/Lady_Gaga_gnx0uy.jpg"
    bio     { Faker::Lorem.sentence }
  end
end
