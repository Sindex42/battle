feature "enter names" do
  scenario "submitting names" do
    visit('/')
    fill_in :player_1, with: 'Pikachu'
    fill_in :player_2, with: 'Charizard'

    click_button 'Fight!'
    expect(page).to have_content('A wild Pikachu and Charizard appeared!')
  end
end
