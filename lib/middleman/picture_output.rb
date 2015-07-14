require "middleman-core"
require "middleman/picture_output/version"
require "middleman/picture_output/extension"

::Middleman::Extensions.register(:picture_output, ::Middleman::PictureOutput::Extension )
