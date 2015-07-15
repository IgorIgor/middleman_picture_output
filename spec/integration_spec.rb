require 'spec_helper'

describe 'build application' do
  before :all do
    build_fixture('base_with_pictures')

    fixture_root_dir = File.join(fixtures_root, 'base_with_pictures')
    Dir.chdir(fixture_root_dir)
  end

  after :all do
    destroy_fixture('base_with_pictures')
  end

  let(:build_path) { File.join(fixtures_root, 'base_with_pictures', 'build') }

  it 'middleman can build app with helpers' do
    expect(File.exists? "build/index.html").to be true
    expect(File.exists? "build/pictures.html").to be true
  end

  context 'index page' do
    let(:index_path) { "#{build_path}/index.html" }

    it 'render "Hello!"' do
      output = File.open(index_path, 'r') { |io| io.read }

      expect(output).to include 'Hello!'
    end
  end

  context 'pictures page' do
    let(:pictures_path) { "#{build_path}/pictures.html" }

    it 'render all images in img tag' do
      output = File.open(pictures_path, 'r') { |io| io.read }

      expect(output).to include '<img src="images/photo_cook/test_img_1.jpg" />'
      expect(output).to include '<img src="images/photo_cook/test_img_2.jpg" />'
      expect(output).to include '<img src="images/photo_cook/test_img_3.jpg" />'
    end
  end
end
