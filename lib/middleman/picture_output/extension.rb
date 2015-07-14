require 'middleman/picture_output/helpers'

module Middleman
  module PictureOutput
    class Extension < Middleman::Extension
      def initialize( app, options_hash = {}, &block)
        super

        app.helpers Middleman::PictureOutput::Helpers
      end
    end
  end
end
