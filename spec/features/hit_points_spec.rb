feature 'Seeing hit points' do
  scenario 'viewing player 1 hit points' do
    sign_in_and_play()

    expect(page).to have_content('Charizard: 10HP')
  end

  scenario 'viewing player 2 hit points' do
    sign_in_and_play()

    expect(page).to have_content('Pikachu: 10HP')
  end
end

feature 'Attacking' do
  scenario 'attack Player 2' do
    sign_in_and_play()

    click_button 'Attack'
    expect(page).to have_content('Pikachu attacked Charizard!')
  end
end
