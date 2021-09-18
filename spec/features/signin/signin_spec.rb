require 'rails_helper'

feature 'Signin' do
  scenario 'User can sign in' do
    user = create(:user)
    visit root_path
    click_link 'Entrar'

    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password

    click_button 'Log in'

    expect(page).to have_content 'Signed in successfully.'
  end
end
