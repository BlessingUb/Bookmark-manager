require 'bookmark'
describe Bookmark do 
  let(:bookmark) {Bookmark.all}
  it 'should contained the saved urls' do 
    expect(bookmark).to eq("http://www.makersacademy.com")
    expect(bookmark).to eq("http://www.destroyallsoftware.com")
    expect(bookmark).to eq("http://www.google.com")
  end
end