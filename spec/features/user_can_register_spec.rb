require 'spec_helper'

feature 'User can register' do
  scenario 'with a valid email and password' do
    visit root_path
    click_on 'Register'

    fill_in 'Email', with: 'kinsey@example.com'
    fill_in 'Password', with: 'password'

    click_on 'Register'

    expect(page).to have_content('Welcome, kinsey@example.com')
  end
end