# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "petridish"
  spec.version       = "0.3.0"
  spec.authors       = ["Peter Desmet"]
  spec.email         = ["peter.desmet.work@gmail.com"]

  spec.summary       = "Jekyll theme for research project websites"
  spec.homepage      = "https://github.com/peterdesmet/petridish"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency "jekyll", "~> 4.2"
end
