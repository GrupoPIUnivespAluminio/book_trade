require 'rails_helper'

feature 'User adds a book' do
  before do
    @user = create(:user)
    login_as(@user)
  end

  scenario 'successfully' do
    visit new_book_path
    fill_in 'Title', with: 'New book'
    fill_in 'Author', with: 'New author'
    fill_in 'Description', with: 'New description'

    click_on 'Enviar'

    expect(page).to have_content('New book')
    expect(page).to have_content('New author')
    expect(page).to have_content('New description')
  end
end