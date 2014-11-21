require File.expand_path('../lib/motion-pinyin/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = "motion-pinyin"
  s.version     = MotionPinyin::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Lian Wang"]
  s.email       = ["wanglian1024@gmail.com"]
  s.homepage    = "http://github.com/wanglian/motion-pinyin"
  s.summary     = "A RubyMotion wrapper for chinese_pinyin (https://github.com/flyerhzm/chinese_pinyin)"
  s.description = "translate chinese hanzi to pinyin."
  s.license     = "MIT"

  s.required_rubygems_version = ">= 1.3.6"

  s.files         = `git ls-files`.split($\)
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]
  
  s.add_development_dependency "bundler", "~> 1.7"
  s.add_development_dependency "rake", "~> 10.0"
  
  s.add_dependency "motion-require", ">= 0.0.6"
end
