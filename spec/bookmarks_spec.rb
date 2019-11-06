require 'bookmarks'

describe Bookmarks do
  let(:bookmark) { described_class.new }

  describe '#all' do
    it 'returns all bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://makersacademy.com');")
      connection.exec("insert into bookmarks (url) VALUES ('http://www.destroyallsoftware.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.msn.com');")

      bookmarks = Bookmarks.all

      expect(bookmarks).to include("http://makersacademy.com")
      expect(bookmarks).to include("http://www.destroyallsoftware.com")
      expect(bookmarks).to include("http://www.msn.com")
    end
  end
end
