feature 'index page' do
  scenario 'user can see bookmark manager' do
    visit '/'
    expect(page).to have_text("Welcome to bookmark manager!")
  end
end
