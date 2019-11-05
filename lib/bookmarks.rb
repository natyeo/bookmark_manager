require 'pg'

class Bookmarks

  def self.all
    conn = PG::Connection.open(:dbname => 'bookmark_manager')
    result = conn.exec('select * from bookmarks')
    result.map do |bookmark| bookmark['url'] end
  end

end
