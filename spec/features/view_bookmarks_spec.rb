feature 'viewing bookmarks' do
  scenario 'a user can see bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')
    Bookmarks.create(url: 'http://makersacademy.com', title: 'Makers Academy')
    Bookmarks.create(url: 'http://www.destroyallsoftware.com', title: 'Destroy all software')
    Bookmarks.create(url: 'http://www.msn.com', title: 'msn')

    visit '/bookmarks'
    expect(page).to have_content "My bookmarks"
    expect(page).to have_link("Makers Academy", href: 'http://makersacademy.com')
    expect(page).to have_link("Destroy all software", href: 'http://www.destroyallsoftware.com')
    expect(page).to have_link( "msn", href: 'http://www.msn.com')
  end
end
