class Album
  attr_accessor :title, :release_year, :id, :artist_id

  def ==(other)
    [self.title, self.release_year, self.id, self.artist_id] == [
     other.title, other.release_year, other.id, other.artist_id]
  end

end
