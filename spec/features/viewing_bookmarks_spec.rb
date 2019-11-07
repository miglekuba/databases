
  # As a time-pressed user
  # So that I can quickly go to web sites I regularly visit
  # I would like to see a list of bookmarks

feature 'Viewing bookmarks' do
  scenario 'A user can see bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.twitter.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")


    visit('/bookmarks')

    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.twitter.com"
    expect(page).to have_content "http://www.google.com"
  end
end
