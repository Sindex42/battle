feature "seeing battle" do
  scenario "testing infrastructure set up" do
    visit('/')
    expect(page).to have_content('Battle!')
  end
end
