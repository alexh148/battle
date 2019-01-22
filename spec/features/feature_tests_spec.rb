feature 'Battle' do
  scenario 'has a testing infrastructure message' do
    visit('/')
    expect(page).to have_content('Testing infrastructure working!')
  end

end
