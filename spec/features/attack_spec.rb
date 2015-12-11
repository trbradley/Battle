feature 'Attack' do
  # As Player 1,
  # So I can win a game of Battle,
  # I want to attack Player 2, and I want to get a confirmation

  scenario 'Attacking player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Johnny Cash attacked Bruce Springsteen'
  end

  # As Player 1,
  # So I can start to win a game of Battle,
  # I want my attack to reduce Player 2's HP

  scenario 'reduce player 2\'s HP' do
    sign_in_and_play
    click_link 'Attack'
    click_link 'OK'
    expect(page).not_to have_content 'Bruce Springsteen: 60 HP'
    expect(page).to have_content 'Bruce Springsteen: 50 HP'
  end

  # As Player 1,
  # So I can lose a game of Battle,
  # I want Player 2 to attack me, and I want to get a confirmation

  scenario 'Attacking player 1' do
    sign_in_and_play
    click_link 'Attack'
    click_link 'OK'
    click_link 'Attack'
    expect(page).to have_content 'Bruce Springsteen attacked Johnny Cash'
  end

  # As Player 1,
  # So I can start to lose a game of Battle,
  # I want Player 2's attack to reduce my HP

  scenario 'reduce player 1\'s HP' do
    sign_in_and_play
    click_link 'Attack'
    click_link 'OK'
    click_link 'Attack'
    click_link 'OK'
    expect(page).not_to have_content 'Johnny Cash: 60 HP'
    expect(page).to have_content 'Johnny Cash: 50 HP'
  end
end
