def sign_in_and_play
visit '/'
fill_in :player1, with: 'Rahul'
fill_in :player2, with: 'Gabby'
click_button 'Play!'

end
