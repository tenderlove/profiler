Gem::Specification.new do |s|
  s.name        = "profile-viewer"
  s.version     = "0.0.1"
  s.licenses    = ["MPL-2.0"]
  s.summary     = "Ruby Gem that packages the Mozilla Profiler"
  s.description = "This gem packages the Mozilla Profiler so that you can run it locally"
  s.authors     = ["Aaron Patterson"]
  s.email       = "tenderlove@ruby-lang.org"
  dir = File.dirname(File.expand_path(__FILE__))
  s.files       = (Dir.glob("#{dir}/dist/**/*") + Dir.glob("ruby-bin/*")).map { |f|
    File.expand_path(f).sub(/^#{dir}\//, '')
  }
  s.bindir      = "ruby-bin"
  s.executables = ["profile-viewer"]
  s.homepage    = "https://rubygems.org/gems/example"
  s.metadata    = { "source_code_uri" => "https://github.com/tenderlove/profiler/tree/ruby" }
end
