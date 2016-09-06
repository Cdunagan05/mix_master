require 'rails_helper'

RSpec.feature "User deletes an artist" do
  scenario "They see the artists page after deleting" do
    artist = Artist.create(name: "Kanye West", image_path: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg")
    artist2 = Artist.create(name: "Eminem", image_path: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg")

    visit artist_path(artist)

    click_on "Delete"

    expect(page).should_not have_content "Kanye West"
    expect(page).to have_content "Eminem"

  end
end
