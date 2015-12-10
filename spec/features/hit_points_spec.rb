feature 'hitpoints' do
  feature 'viewing hitpoints' do
    # As Player 1,
    # So I can see how close I am to losing,
    # I want to see my own hit points
    scenario 'viewing player 1\'s hitpoints' do
      sign_in_and_play
      expect(page).to have_content 'Johnny Cash: 60 HP'
    end

    # As Player 1,
    # So I can see how close I am to winning
    # I want to see Player 2's Hit Points
    scenario 'viewing player 2\'s hitpoints' do
      sign_in_and_play
      expect(page).to have_content 'Bruce Springsteen: 60 HP'
    end
  end
end
