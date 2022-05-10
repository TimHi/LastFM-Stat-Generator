# frozen_string_literal: true

# Module to interact with the last fm api
module LastFmModule
  def fetch_last_fm_albums
    recent_albums = get_data_from_api
    create_recent_album_model(recent_albums)
  end

  def get_data_from_api
    lastfm = Lastfm.new(ENV['lastfm_api_key'], ENV['lastfm_secret'])
    token = lastfm.auth.get_token
    puts token
    recent_albums = lastfm.user.get_top_albums(user: 'th-p', period: '7day')
  end

  def create_recent_album_model(recent_albums)
    puts recent_albums
  end
end
