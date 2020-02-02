require_relative 'lib/onecmd/version'

Gem::Specification.new do |spec|
  spec.name          = 'onecmd'
  spec.version       = OneCmd::VERSION
  spec.authors       = ["xiongzenghui"]
  spec.email         = ["zxcvb1234001@163.com"]

  spec.summary       = 'a iOS dev comand line tools'
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/xzhhe/onecmd'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  # spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
  #   `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  # end
  spec.files = Dir["lib/**/*.rb"] + %w{ bin/onecmd README.md }
  spec.executables   = %w{ onecmd }
  spec.require_paths = %w{ lib }

  spec.add_runtime_dependency 'cocoapods', '>= 1.6.0', '< 2.0'
  spec.add_runtime_dependency 'gitlab', '>=4.11.0'
  spec.add_runtime_dependency 'jenkins_api_client', '>=1.5.3', '<2.0'
  spec.add_runtime_dependency 'formatador', '>=0.2.5', '<1.0'
  # spec.add_runtime_dependency ''
end
