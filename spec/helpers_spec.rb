require 'spec_helper'

describe Middleman::PictureOutput::Helpers do

  let(:helpers) { Class.new { extend Middleman::PictureOutput::Helpers } }

  describe '#photos' do
    before do
      fixture_root_dir = File.join(fixtures_root, 'base_with_pictures')
      Dir.chdir(fixture_root_dir)
    end

    let(:photos_html) { helpers.photos('photo_cook') }

    it 'contains all images in img tag' do
      require 'middleman/picture_output/helpers'

      expect( photos_html ).to match(/<img src=\"images\/photo_cook\/test_img_1.jpg\"/)
      expect( photos_html ).to match(/<img src=\"images\/photo_cook\/test_img_2.jpg\"/)
      expect( photos_html ).to match(/<img src=\"images\/photo_cook\/test_img_3.jpg\"/)
    end

  end

  it 'has a version number' do
    expect(Middleman::PictureOutput::VERSION).not_to be nil
  end
end
