require_relative 'lib/kaydev_view_tool/version'

Gem::Specification.new do |spec|
  spec.name = 'kaydev_view_tool'
  spec.version = KaydevViewTool::VERSION
  spec.authors = ['kobby08']
  spec.email = ['linusquam@gmail.com']

  spec.summary = 'Allow to view copyright details on each page.'
  spec.description =
    'This gem has various methods to help render copyright details '
  spec.homepage = 'https://github.com/kobby08'
  spec.license = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] =
    "TODO: Put your gem's public repo URL here."
  spec.metadata['changelog_uri'] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files =
    Dir.chdir(File.expand_path('..', __FILE__)) do
      `git ls-files -z`.split("\x0").reject do |f|
        f.match(%r{^(test|spec|features)/})
      end
    end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
