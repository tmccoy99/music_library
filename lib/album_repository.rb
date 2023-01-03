require "database_connection"

class AlbumRepository

  def all
    sql = "SELECT * FROM albums"
    result_set = DatabaseConnection.exec_params(sql, [])

    arr = result_set.map do |record|
      album = Album.new
      album.title = record["title"]
      album.id = record["id"].to_i
      album.artist_id = record["artist_id"].to_i
      album.release_year = record["release_year"].to_i
      album
    end

  arr
  end

  def find

  end

  def create

  end

end