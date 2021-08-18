require 'bookmark'

describe Bookmark do 

  let(:bookmark) {Bookmark.all}

  it 'should contained the saved urls' do 
    expect(bookmark).to include(
    "http://www.makersacademy.com",
    "http://www.destroyallsoftware.com",
    "http://www.google.com"
    )
  end

  it 'should add a new bookmark' do
    Bookmark.add('http://www.bbc.co.uk')
    expect(bookmark).to include('http://www.bbc.co.uk')
  end

end