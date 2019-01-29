class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre
  has_many :notes

  def artist_name
    @artist = Artist.find_or_create_by(name: params[:artist_name])
    self.artist = @artist
  end
end
