feature 'Battle' do
  # scenario 'has a testing infrastructure message' do
  #   visit('/')
  #   expect(page).to have_content('Testing infrastructure working!')
  # end

  scenario 'allows players to fill in their names' do
    visit('/')
    fill_in('player1', with: 'Seb')
    fill_in('player2', with: 'Alex')
    click_button('Submit')
    expect(page).to have_content("Seb VS. Alex")
  end

end
