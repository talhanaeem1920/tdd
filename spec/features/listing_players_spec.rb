require "rails_helper"

RSpec.describe "List Players" do
  it "displays the first name and last name from the players saved" do
    player1 = Player.create(first_name:"Eduardo", last_name:"Baik" )
    player1 = Player.create(first_name:"Christopher", last_name:"Burns" )

    visit "/"
    expect(page).to have_text("Eduardo")
    expect(page).to have_text("baik")
    expect(page).to have_text("Christopher")
    expect(page).to have_text("Burns")

    expect(page).to have_link("New Player")
  end
end