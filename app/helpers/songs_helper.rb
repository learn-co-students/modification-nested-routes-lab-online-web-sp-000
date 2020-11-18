module SongsHelper

    def artist_select(song)
        if song.artist.nil?
        #this is like form tag stuff, not form for
        select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name)
      #lets hope if theres no song.author.name, it will display no dafault value instead of errors
        else
        hidden_field_tag "song[artist_id]", song.artist_id
        end
  
      #select_tag [SELECT_FIELD_NAME], options_from_collection_for_select([YOUR_COLLECTION], [NAME_OF_ATTRIBUTE_TO_SEND], [NAME_OF_ATTRIBUTE_SEEN_BY_USER], [DEFAULT_VALUE])
  
      #inspiration, but not same:
    #   if post.author.nil? 
    #     select_tag "post[author_id]", options_from_collection_for_select(Author.all, :id, :name)
    # else
    #     hidden_field_tag "post[author_id]", post.author_id
    # end
  
  end
  
  
  
end
