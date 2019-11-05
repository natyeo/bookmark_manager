def test_db
  conn = PG::Connection.open(:dbname => 'bookmark_manager_test')
  result = conn.exec('select * from bookmarks')
  result.map do |bookmark| bookmark['url'] end
end
