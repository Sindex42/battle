feature 'Switching turns' do
  background { sign_in_and_play }

  context 'seeing the current turn' do
    scenario 'at the start of the game' do
      expect(page).to have_content("Pikachu's turn")
    end

    scenario 'after player 1 attacks' do
      click_button 'Attack'
      click_button 'OK'
      expect(page).not_to have_content("Pikachu's turn")
      expect(page).to have_content("Charizard's turn")
    end
  end
end
