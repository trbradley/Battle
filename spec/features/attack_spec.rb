feature 'Attack' do

  # As Player 1,
  # So I can win a game of Battle,
  # I want to attack Player 2, and I want to get a confirmation

  scenario 'Atacking player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Johnny Cash attacked Bruce Springsteen'
  end
end
