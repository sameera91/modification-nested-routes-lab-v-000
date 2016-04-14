module SongsHelper
  def artist_id_field(song)
    if song.artist.nil?
      #select from existing artists 
      select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name)
    else
      #enter a new artist
      hidden_field_tag "song[artist_id]", song.artist_id
    end
  end
end
