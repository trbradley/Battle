
feature 'Enter names' do

  # As two Players,
  # So we can play a personalised game of Battle,
  # We want to Start a fight by entering our Names and seeing them
  scenario 'allows users to submit names and see them' do
    sign_in_and_play
    expect(page).to have_content 'Johnny Cash vs. Timmy Jones'
  end


end
