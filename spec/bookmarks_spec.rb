require 'bookmarks'
require 'database_helpers'

describe Bookmarks do
  let(:bookmark) { described_class.new }

  describe '#all' do
    it 'returns all bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      bookmark = Bookmarks.create(url: 'http://makersacademy.com', title: 'Makers Academy')
      connection.exec("insert into bookmarks(url, title) VALUES('http://www.destroyallsoftware.com', 'Destroy all software');")
      connection.exec("INSERT INTO bookmarks(url, title) VALUES('http://www.msn.com', 'msn');")


      bookmarks = Bookmarks.all

      expect(bookmarks.length).to eq 3
      expect(bookmarks.first).to be_a Bookmarks
      expect(bookmarks.first.id).to eq bookmark.id
      expect(bookmarks.first.title).to eq 'Makers Academy'
      expect(bookmarks.first.url).to eq 'http://makersacademy.com'
    end
  end

  describe '#create' do
    it 'creates a new bookmark' do
      bookmark = Bookmarks.create(url: 'http://test.com', title: 'test')
      persisted_data = persisted_data(id: bookmark.id)

      expect(bookmark).to be_a Bookmarks
      expect(bookmark.id).to eq persisted_data.first['id']
      expect(bookmark.title).to eq 'test'
      expect(bookmark.url).to eq 'http://test.com'
    end
  end
end
