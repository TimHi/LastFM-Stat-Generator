require 'rails_helper'
require 'vcr_helper'

describe LastFmModule do
  describe 'fetch_data_from_api' do
    # https://stackoverflow.com/a/10802518
    let(:dummy_class) { Class.new.extend(LastFmModule) }
    let(:response) { dummy_class.fetch_data_from_api }
    it 'Fetches JSON from the LastFM Api and verifies it isnt empty', :vcr do
      expect(response).to be_kind_of(Array)
      expect(response).to_not be_empty
    end
  end
end
