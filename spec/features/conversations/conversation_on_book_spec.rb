require 'rails_helper'

feature 'Conversation on book' do
  before do
    @user = create(:user)
    @other_user = create(:user)
    login_as(@user, scope: :user)
  end

  scenario 'User can see conversation on book' do
    book = create(:book, user: @other_user)
    conversation = create(:conversation, book: book, sender_id: @user.id, receiver_id: @other_user.id)
    visit book_path(book)
    click_link 'Conversation'

    expect(page).to have_content(conversation.content)
  end
end