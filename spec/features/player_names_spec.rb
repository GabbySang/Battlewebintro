feature 'Enter and display player names' do
  scenario 'Each player enters their name' do
    visit '/'
    within(:css, '#player_names_form') do
      sign_in_and_play
    end
  end
end
