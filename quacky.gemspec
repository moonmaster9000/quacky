Gem::Specification.new do |s|
  s.name       = "quacky"
  s.version    = File.read "VERSION"
  s.summary    = "Ensure your test doubles quack like the real thing."
  s.email      = "moonmaster9000@gmail.com"
  s.homepage   = "https://github.com/moonmaster9000/quacky"
  s.authors    = "Matt Parker"

  s.files      = Dir["lib/**/*"] << "VERSION"
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "activesupport", "~> 3.2.5"
  s.add_development_dependency "rspec"
end
