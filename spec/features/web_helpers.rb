def sign_in_and_play
  visit('/')
  fill_in('player1', with: 'Seb')
  fill_in('player2', with: 'Alex')
  click_button('Submit')
end
