# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "petridish"
  spec.version       = "0.1.0"
  spec.authors       = ["Peter Desmet"]
  spec.email         = ["peter.desmet.work@gmail.com"]

  spec.summary       = "Jekyll theme for research project websites"
  spec.homepage      = "https://github.com/peterdesmet/petridish"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency "jekyll", "~> 3.8"

  spec.add_development_dependency "bundler", "~> 2.0.1"
  spec.add_development_dependency "rake", "~> 12.0"
end
