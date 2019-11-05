feature 'viewing bookmarks' do
  scenario 'a user can see bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content "My bookmarks"
    expect(page).to have_content "https://makers.tech"
    expect(page).to have_content "https://w3schools.com/html"
  end
end
