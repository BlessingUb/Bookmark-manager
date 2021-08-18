require 'bookmark'
describe Bookmark do 
  let(:bookmark) {Bookmark.all}
  it 'should contained the saved urls' do 
    expect(bookmark).to include("http://www.makersacademy.com")
    expect(bookmark).to include("http://www.destroyallsoftware.com")
    expect(bookmark).to include("http://www.google.com")
  end
end