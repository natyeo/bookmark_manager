require 'pg'

class Bookmarks

  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      conn = PG::Connection.open(:dbname => 'bookmark_manager_test')
    else
      conn = PG::Connection.open(:dbname => 'bookmark_manager')
    end
    result = conn.exec('select * from bookmarks')
    result.map do |bookmark| bookmark['url'] end
  end

end
