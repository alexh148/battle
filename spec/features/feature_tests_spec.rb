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

  scenario 'shows player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content("Alex HP: 100/100")
  end

  scenario 'player 1 attacks player 2 and gets confirmation' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content("Seb attacked Alex")
  end

end
