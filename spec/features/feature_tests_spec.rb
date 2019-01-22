require_relative 'web_helpers'

feature 'Battle' do
  # scenario 'has a testing infrastructure message' do
  #   visit('/')
  #   expect(page).to have_content('Testing infrastructure working!')
  # end

  scenario 'allows players to fill in their names' do
    sign_in_and_play
    expect(page).to have_content("Seb VS. Alex")
  end

  scenario 'shows player 1 hit points' do
    sign_in_and_play
    expect(page).to have_content("Seb HP: 100/100")
  end

end
