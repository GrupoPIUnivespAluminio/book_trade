require 'rails_helper'

feature 'User profile' do
  before(:each) do
    @user = create(:user)
    login_as(@user, scope: :user)
  end

  scenario 'User can view their profile' do
    visit user_path(@user)
    expect(page).to have_content(@user.email)
  end

  scenario 'User can edit their profile' do
    visit edit_user_registration_path(@user)
    fill_in 'Nome Completo', with: 'New Name'
    fill_in 'Diga quem é você', with: 'New Bio'
    fill_in 'Senha atual', with: @user.password

    click_button 'Atualizar Perfil'

    expect(page).to have_content('New Name')
  end
end
