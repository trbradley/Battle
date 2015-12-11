feature 'switch_turns' do
  scenario 'display whose turn it is' do
    sign_in_and_play
    expect(page).to have_content 'Johnny Cash: It is your turn!'
  end

  scenario 'allows players to take turns' do
    sign_in_and_play
    click_link 'Attack'
    click_button 'OK'
    expect(page).not_to have_content 'Johnny Cash: It is your turn!'
    expect(page).to have_content 'Bruce Springsteen: It is your turn!'
  end
end
