require "database_connection"

class AlbumRepository

  def all
    sql = "SELECT * FROM albums"
    query_result = DatabaseConnection.exec_params(sql, [])
    arr = query_result.map { |record| convert_to_album(record) }
    end

  arr
  end

  def find(id)
    sql = "SELECT * FROM albums WHERE id = #{id}"
    query_result = DatabaseConnection.exec_params(sql, [])
    record = query_result[0]
    convert_to_album(record)
  end

  def create

  end

  private

  def convert_to_album(record)
    album = Album.new
    album.title = record["title"]
    album.id = record["id"].to_i
    album.artist_id = record["artist_id"].to_i
    album.release_year = record["release_year"].to_i
    album
  end

end