feature 'adding bookmarks' do
  scenario 'user can submit bookmark in form' do
    visit '/bookmarks/new'
    fill_in('url', with: 'http://test.com')
    fill_in('title', with: 'test')
    click_button 'Submit'
    expect(page).to have_link('test', href: 'http://test.com')
  end
end
