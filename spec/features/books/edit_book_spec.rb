require 'rails_helper'

feature 'Edit book' do
  before do
    @user = create(:user)
    login_as(@user, scope: :user)
  end

  scenario 'User can edit book' do
    book = create(:book)
    visit edit_book_path(book)

    fill_in 'Title', with: 'New Title'
    fill_in 'Author', with: 'New Author'

    click_button 'Enviar'

    expect(page).to have_content 'New Title'
    expect(page).to have_content 'New Author'
  end
end
