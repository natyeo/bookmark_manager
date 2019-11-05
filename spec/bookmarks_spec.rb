require 'bookmarks'

describe Bookmarks do
  let(:bookmark) { described_class.new }

  describe '#all' do
    it 'returns all bookmarks' do
      bookmarks = Bookmarks.all
      expect(bookmarks).to include("https://makers.tech")
      expect(bookmarks).to include("https://w3schools.com/html")
    end
  end
end
