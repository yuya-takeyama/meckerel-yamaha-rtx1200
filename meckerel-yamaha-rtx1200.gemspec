# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'meckerel/yamaha/rtx1200/version'

Gem::Specification.new do |spec|
  spec.name          = "meckerel-yamaha-rtx1200"
  spec.version       = Meckerel::Yamaha::Rtx1200::VERSION
  spec.authors       = ["Yuya Takeyama"]
  spec.email         = ["sign.of.the.wolf.pentagram@gmail.com"]
  spec.summary       = %q{Command to collect metrics of Yamaha RTX1200 for Mackerel}
  spec.description   = %q{Command to collect metrics of Yamaha RTX1200 for Mackerel}
  spec.homepage      = "https://github.com/yuya-takeyama/meckerel-yamaha-rtx1200"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
