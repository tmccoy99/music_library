require "album_repository"
require "database_connection"
require "album"
require "pg"

describe AlbumRepository do

  before(:each) do
    @repo = AlbumRepository.new
    @am = Album.new ; @humbug = Album.new
    @am.title = "AM" ; @humbug.title = "Humbug"
    @am.release_year = 2013 ; @humbug.release_year = 2009
    @am.id = 1 ; @humbug.id = 2
    @am.artist_id = 1 ; @humbug.artist_id = 1

    test_seed = File.read("spec/seeds_album.sql")
    connection = PG.connect({ host: '127.0.0.1', 
    dbname: 'music_library_test' })
    connection.exec(test_seed)
  end

  it "#all returns array of album instances in test database" do
    expect(@repo.all).to eq [@am, @humbug]
  end
  
  it "#find is given an id as argument and returns corresponding album" do
    expect(@repo.find(1)).to eq @am
  end

  it "#create takes album as argument and adds it to database" do
    the_car = Album.new
    the_car.title = "The Car"
    the_car.release_year = 2022
    the_car.id = 3
    the_car.artist_id = 1
    @repo.create(the_car)
    expect(@repo.all).to eq [@am, @humbug, the_car]

    sql = File.read("spec/seeds_album.sql")
    connection = PG.connect({ host: '127.0.0.1', dbname: "music_library_test" })
    connection.exec(sql)
  end
end