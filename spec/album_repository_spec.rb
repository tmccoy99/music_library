require "album_repository"
require "database_connection"
require "album"

describe AlbumRepository do

  it "#all returns array of album instances in test database" do
    repo = AlbumRepository.new
    am = Album.new ; humbug = Album.new
    am.title = "AM" ; humbug.title = "Humbug"
    am.release_year = 2013 ; humbug.release_year = 2009
    am.id = 1 ; humbug.id = 2
    am.artist_id = 1 ; humbug.artist_id = 1
    expect(repo.all).to eq [am, humbug]
  end
  
end