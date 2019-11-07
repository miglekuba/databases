feature 'Adding a new bookmark' do
scenario 'A user can add a bookmark to Bokmark Manager' do
    visit ('/bookmarks/new')
    fill_in('url', with: 'http://lol.com')
    click_button('Submit')
    expect(page).to have_content 'http://lol.com'
end
end
