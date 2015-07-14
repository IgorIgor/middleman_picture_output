require 'middleman-core'
require 'padrino-helpers'

module Middleman
  module PictureOutput
    module Helpers
      include Padrino::Helpers::TagHelpers

      def photos(folder)
        source_code = ""

        dir = Dir.open("source/images/#{folder}")
        dir.each do |file|
          unless File.directory? file
            source_code += tag(:img, src: "images/#{folder}/#{file}")
            source_code += "<br>"
          end
        end

        source_code
      end
    end
  end
end
