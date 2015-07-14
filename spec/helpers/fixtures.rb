require 'middleman-core'
require 'middleman-core/cli'
require 'middleman-core/profiling'
require 'fileutils'

module Middleman
  module Helpers
    module Fixtures
      def fixtures_root
        File.expand_path(File.join(File.dirname(__FILE__), '../', 'fixtures'))
      end

      def build_fixture(fixture)
        fixture_root_dir = File.join(fixtures_root, fixture)
        ENV['MM_ROOT'] = fixture_root_dir
        Dir.chdir(ENV['MM_ROOT'])
        @builder = Middleman::Cli::Base.new
        @builder.build
      end

      def destroy_fixture(fixture)
        fixture_build_dir = File.join(fixtures_root, fixture, 'build')
        FileUtils.rm_rf(fixture_build_dir)
      end
    end
  end
end
