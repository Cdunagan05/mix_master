FactoryGirl.define do
  factory :song do
    title "MyString"
    artist Artist.create(name: "Bob Marley1", image_path: "www.")
  end
end
