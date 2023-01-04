require_relative "lib/database_connection.rb"
require_relative "lib/album_repository.rb"
require_relative "lib/album.rb"

DatabaseConnection.connect("music_library")

repo = AlbumRepository.new
repo.all.each { |album| p album.title }
