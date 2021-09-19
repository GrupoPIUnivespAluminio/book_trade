require 'rails_helper'

feature 'Books List' do
  before do
    @user = create(:user)
    login_as(@user, scope: :user)
    @books = create_list(:book, 3)
  end

  scenario 'User can see a list of books' do
    visit books_path

    expect(page).to have_link(@books[0].title)
    expect(page).to have_link(@books[1].title)
    expect(page).to have_link(@books[2].title)
  end
end
