require 'rails_helper'

feature 'Signup' do
  scenario 'User can sign up' do
    visit root_path
    click_link 'Cadastre-se'

    fill_in 'Email', with: 'test@test.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'

    click_button 'Criar Conta'

    expect(page).to have_content('Welcome!')
  end
end
