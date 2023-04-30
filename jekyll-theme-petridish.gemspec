# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-petridish"
  spec.version       = "3.0"
  spec.authors       = ["Peter Desmet"]
  spec.email         = ["peter.desmet.work@gmail.com"]

  spec.summary       = "Jekyll theme for research project websites"
  spec.homepage      = "https://github.com/peterdesmet/petridish"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_data|_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i) }

  spec.add_runtime_dependency "jekyll", '>= 3.9'
end
