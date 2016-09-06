require 'rails_helper'

RSpec.feature "User edits an artist" do
  scenario "They see the page for the individual artist I think" do
    artist = Artist.create(name: "Kanye West", image_path: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg")

    visit artist_path(artist)

    click_on "Edit"

    fill_in "artist_name", with: "Taylor Swift"

    click_on "Update Artist"

    expect(page).to have_content "Taylor Swift"

  end

end
