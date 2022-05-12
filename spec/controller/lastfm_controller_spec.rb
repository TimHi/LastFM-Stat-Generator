require 'rails_helper'  # this
# require 'LastFmModule'

describe LastFmModule do
  describe 'fetch_data_from_api' do
    it 'returns correctly some data', :vcr do
      let(:dummy_class) { Class.new { include LastFmModule } }
      let(:album_response) { dummy_class.fetch_data_from_api }
      puts 'AAAL'
      #  expect(album_response).to be_kind_of(Hash)
      #  expect(album_response).to have_key(:status)
      #  expect(album_response).to have_key(:data)
    end
  end
end
