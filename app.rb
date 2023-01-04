require_relative "lib/database_connection.rb"
require_relative "lib/album_repository.rb"
require_relative "lib/album.rb"

DatabaseConnection.connect("music_library")

repo = AlbumRepository.new
album = repo.find(3)
p "#{album.title} #{album.release_year}"
