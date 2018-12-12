feature "seeing homepage" do
  scenario "testing infrastructure set up" do
    visit('/')
    expect(page).to have_content('Testing infrastructure working!')
  end
end
