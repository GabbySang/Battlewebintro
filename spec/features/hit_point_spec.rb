feature 'See Hit Player Hit Points' do
  scenario 'See number of hit points for Player 2' do
    visit '/'
    # within(:css, '#player_names_form') do
      sign_in_and_play
      expect(page).to have_content('Gabby: 80HP')
    end
  end
