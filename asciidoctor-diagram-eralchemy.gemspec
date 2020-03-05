
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "asciidoctor-diagram-eralchemy/version"

Gem::Specification.new do |spec|
  spec.name          = "asciidoctor-diagram-eralchemy"
  spec.version       = Asciidoctor::Diagram::Eralchemy::VERSION
  spec.authors       = ["Naruki Azuma"]
  spec.email         = ["naduma@gmail.com"]

  spec.summary       = %q{Asciidoctor ERAlchemy extension}
  spec.description   = %q{This extension generates Entity Relationship (ER) diagram.}
  spec.homepage      = "https://github.com/naduma/asciidoctor-diagram-eralchemy"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 13.0"

  spec.add_runtime_dependency 'asciidoctor-diagram', '>= 1.5.5'
end
