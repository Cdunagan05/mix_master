require 'rails_helper'

RSpec.feature "User sees all artists" do
  scenario "They see the page for all the artists" do
    Artist.create(name: "Kanye West", image_path: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg")
    Artist.create(name: "Eminem", image_path: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg")

    visit '/artists'

    expect(page).to have_content "Kanye West"
    expect(page).to have_content "Eminem"

    click_link "Kanye West"

    expect(page).to have_content "Kanye West"
    expect(page).should_not have_content  "Eminem"

  end
end
