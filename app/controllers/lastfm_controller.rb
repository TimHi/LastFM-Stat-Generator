# typed: true
# frozen_string_literal: true

# Controller for the last fm page
class LastfmController < ApplicationController
  include LastFmModule
  def index
    @albums = []
  end

  def start_button_clicked
    puts 'Getting Albums...'
    @albums = fetch_last_fm_albums('7day')
    puts 'Focking UI updated?'
  end
end
