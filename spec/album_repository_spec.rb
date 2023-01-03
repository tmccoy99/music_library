require "album_repository"
require "database_connection"
require "album"

describe AlbumRepository do

  before(:each) do
    @repo = AlbumRepository.new
    @am = Album.new ; @humbug = Album.new
    @am.title = "AM" ; @humbug.title = "Humbug"
    @am.release_year = 2013 ; @humbug.release_year = 2009
    @am.id = 1 ; @humbug.id = 2
    @am.artist_id = 1 ; @humbug.artist_id = 1
  end

  it "#all returns array of album instances in test database" do
    expect(@repo.all).to eq [@am, @humbug]
  end
  
  it "#find is given an album id as argument and returns the corresonding album" do
    expect(@repo.find(2)).to eq @humbug
  end
end