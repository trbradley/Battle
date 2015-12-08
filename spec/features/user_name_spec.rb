
feature "User name" do

  # As two Players,
  # So we can play a personalised game of Battle,
  # We want to Start a fight by entering our Names and seeing them
  scenario 'allows users to enter names and see them' do
    visit '/'
    fill_in(:player_1_name, with: 'Johnny Cash')
    fill_in(:player_2_name, with: 'Timmy Jones')
    click_button('Submit')
    expect(page).to have_content 'Johnny Cash vs. Timmy Jones'
  end


end
