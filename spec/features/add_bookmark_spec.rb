feature 'user is able to enter a bookmark' do
  scenario 'add a bookmark to out list' do
    visit('/bookmarks')
    click_button('Add a new Bookmark')
    fill_in('url', with: 'http://www.bbc.co.uk')
    click_button('Save')
    expect(page).to have_content('http://www.bbc.co.uk')
  end
end