require 'padrino-helpers'
require 'middleman/picture_output'

set :images_dir, 'images'

set :markdown_engine, :redcarpet

activate :picture_output

configure :build do

end
