# typed: false
# frozen_string_literal: true

# Module to interact with the last fm api
module LastFmModule
  def fetch_last_fm_albums
    recent_albums = fetch_data_from_api
    create_recent_album_model(recent_albums)
  end

  def fetch_data_from_api
    lastfm = Lastfm.new(ENV['lastfm_api_key'], ENV['lastfm_secret'])
    lastfm.user.get_top_albums(user: 'th-p', period: '7day')
  end

  def create_recent_album_model(recent_albums)
    album_models = []
    placeholder_image = 'https://pbs.twimg.com/profile_images/821849411991044096/lQFa_Vly_400x400.jpg'
    recent_albums.each do |album|
      r_a = RecentTopAlbum.new(
        title: album['name'], rank: album['rank'], playcount: album['playcount'], artist: album['artist']['name'],
        album_url: album['url'], artist_url: album['artist']['url']
      )
      r_a.cover_small = album['image'][0]['content'].nil? ? placeholder_image : r_a.cover_small = album['image'][0]['content']
      r_a.cover_medium = album['image'][1]['content'].nil? ? placeholder_image : r_a.cover_medium = album['image'][1]['content']
      r_a.cover_large = album['image'][2]['content'].nil? ? placeholder_image : r_a.cover_large = album['image'][2]['content']
      album_models << r_a
    end
    album_models
  end
end
