feature 'seeing hit points' do
  scenario 'viewing hit points' do
    visit('/')
    fill_in :player_1, with: 'Pikachu'
    fill_in :player_2, with: 'Charizard'

    click_button 'Fight!'
    expect(page).to have_content('Charizard: 10HP')
  end
end
