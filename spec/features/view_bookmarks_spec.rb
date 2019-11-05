feature 'viewing bookmarks' do
  scenario 'a user can see bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content "My bookmarks"
    expect(page).to have_content "http://makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.msn.com"
  end
end
