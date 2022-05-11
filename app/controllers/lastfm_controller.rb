# typed: true
# frozen_string_literal: true

# Controller for the last fm page
class LastfmController < ApplicationController
  include LastFmModule
  def index
    @albums = fetch_last_fm_albums
  end
end
