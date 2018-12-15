feature 'Seeing hit points' do
  background { sign_in_and_play() }

  scenario 'viewing player 1 HP' do
    expect(page).to have_content('Charizard: 100HP')
  end

  scenario 'viewing player 2 HP' do
    expect(page).to have_content('Pikachu: 100HP')
  end
end
