require 'spec_helper'

describe 'Helpers intergation in application' do
  before do
    build_fixture('base_with_pictures')

    fixture_root_dir = File.join(fixtures_root, 'base_with_pictures')
    Dir.chdir(fixture_root_dir)
  end

  after do
    destroy_fixture('base_with_pictures')
  end

  it 'middleman can build app with helpers' do
    File.exists? "build/index.html"
  end
end
