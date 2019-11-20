require 'rails_helper'

RSpec.feature "Authorized visitor can log in", type: :feature, js: true do

  before :each do 
    User.create!(
    first_name: "Caitlin",
    last_name: "Ing",
    email: "test@yas.com",
    password: "password",
    password_confirmation: "password"
    )
  end

  scenario "They complete the login form and are successfully logged in" do
    visit root_path
    expect(page).to have_content 'Login'

    click_on 'Login'
    expect(page).to have_content 'Welcome back, friend!'
    
    fill_in 'email', with: 'test@yas.com'
    fill_in 'password', with: 'password'
    click_on 'Submit'

    expect(page).to have_content 'Logout'
    save_screenshot
  end

end




