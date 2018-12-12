feature 'seeing hit points' do
  scenario 'viewing player 1 hit points' do
    sign_in_and_play()

    expect(page).to have_content('Charizard: 10HP')
  end

  scenario 'viewing player 2 hit points' do
    sign_in_and_play()

    expect(page).to have_content('Pikachu: 10HP')
  end
end
