feature 'Attack your opponent' do
  scenario 'Player 1 attacks Player 2' do
    visit '/'
    # within(:css, '#player_names_form') do
      sign_in_and_play
      expect(page).to have_content('Gabby: 80HP')
      click_button 'Attack'
    end
  end
