require 'motion-require'

Motion::Require.all(Dir.glob(File.expand_path('../motion-pinyin/*.rb', __FILE__)))

Motion::Project::App.setup do |app|
  app.resources_dirs << File.join(File.dirname(__FILE__), '../data')
end