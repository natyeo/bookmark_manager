feature 'viewing bookmarks' do
  scenario 'a user can see bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://makersacademy.com');")
    connection.exec("insert into bookmarks (url) VALUES ('http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.msn.com');")

    visit '/bookmarks'
    expect(page).to have_content "My bookmarks"
    expect(page).to have_content "http://makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.msn.com"
  end
end
