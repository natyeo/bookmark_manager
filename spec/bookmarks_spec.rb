require 'bookmarks'

describe Bookmarks do
  let(:bookmark) { described_class.new }

  describe '#all' do
    it 'returns all bookmarks' do
      #bookmarks = Bookmarks.all
      bookmarks = Bookmarks.test_db
      expect(bookmarks).to include("http://makersacademy.com")
      expect(bookmarks).to include("http://www.destroyallsoftware.com")
      expect(bookmarks).to include("http://www.msn.com")
    end
  end
end
