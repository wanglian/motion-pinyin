unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile."
end

Motion::Project::App.setup do |app|
  app.name = 'motion-pinyin'
  app.version = 'MotionPinyin::VERSION'
  app.detect_dependencies = false
end

task :build do
  system "gem build motion-pinyin.gemspec"
end

task :install => :build do
  system "sudo gem install motion-pinyin-#{MotionPinyin::VERSION}.gem"
end

task :release => :build do
  puts "Tagging #{MotionPinyin::VERSION}..."
  system "git tag -a #{MotionPinyin::VERSION} -m 'Tagging #{MotionPinyin::VERSION}'"
  puts "Pushing to Github..."
  system "git push --tags"
  puts "Pushing to rubygems.org..."
  system "gem push motion-pinyin-#{MotionPinyin::VERSION}.gem"
end

desc 'Default: run unit tests.'
task :default => :test

desc 'Test the motion-pinyin plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Generate documentation for the motion-pinyin plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'MotionPinyin'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
