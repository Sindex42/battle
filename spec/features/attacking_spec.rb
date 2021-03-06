feature 'Attacking' do
  background do
    sign_in_and_play()
    click_button 'Attack'
  end

  scenario 'confirms attack on player 2' do
    expect(page).to have_content('Pikachu attacked Charizard!')
  end

  scenario 'reduces player 2 HP by 10' do
    expect(page).not_to have_content('Charizard: 100HP')
    expect(page).to have_content('Charizard: 90HP')
  end
end
