
  # As a time-pressed user
  # So that I can quickly go to web sites I regularly visit
  # I would like to see a list of bookmarks

feature 'Viewing bookmarks' do
  scenario 'A user can see bookmarks' do
    Bookmark.create(url: "http://www.makersacademy.com")
    Bookmark.create(url: "http://www.twitter.com")
    Bookmark.create(url: "http://www.google.com")

  visit('/bookmarks')

    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.twitter.com"
    expect(page).to have_content "http://www.google.com"
  end
end
