require "database_connection"

class AlbumRepository

  def all
    sql = "SELECT * FROM albums"
    result_set = DatabaseConnection.exec_params(sql, [])

    result_set.map! do |record|
      album = Album.new
      album.title = record["title"]
      album.id = record["id"]
      album.artist_id = record["artist_id"]
      album.release_year = record["release_year"]
      album
    end
  end

  def find

  end

  def create

  end

end