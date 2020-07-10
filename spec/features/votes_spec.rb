require 'rails_helper'

feature 'votes', type: :feature do
  it 'are created by admins' do
    create :admin, email: 'yolo@test.com', password: 'password'

    visit root_path
    fill_in('session_email', with: 'yolo@test.com')
    fill_in('session_password', with: 'password')
    click_button('new-session-button')

    visit votes_path

    click_link 'Nouveau vote'

    fill_in('vote-question', with: 'How are things?')

    expect do
      click_button('new-vote-button')
    end.to change { Vote.count }.by 1
  end
end
