feature 'See Hit Player Hit Points' do
  scenario 'See number of hit points for Player 2' do
    visit '/'
    # within(:css, '#player_names_form') do
      fill_in :player1, with: 'Rahul'
      fill_in :player2, with: 'Gabby'
      click_button 'Play!'
      expect(page).to have_content('Gabby: 80HP')
    end
  end
