#encoding: utf-8

Gem::Specification.new do |gem|
  gem.name        = 'qat-cucumber'
  gem.version     = '6.0.0'
  gem.summary     = %q{QAT is a Cucumber-based toolkit for automating tests.}
  gem.description = <<-DESC
  QAT is a Cucumber-based toolkit for automating tests, including a list fo modules for:
    - Time manipulation
    - Test reporting
    - Configuration management
    - Jenkins Integration
  DESC
  gem.email    = 'qatoolkit@readinessit.com'
  gem.homepage = 'https://github.com/readiness-it/qat-cucumber'

  gem.authors = ['QAT']
  gem.license = 'GPL-3.0'

  extra_files = %w[LICENSE]
  gem.files   = Dir.glob('{lib}/**/*') + extra_files

  gem.executables.push('qat')

  gem.required_ruby_version = '~> 2.3'

  gem.add_dependency 'cucumber', '~> 2.4.0'

  gem.add_dependency 'rake'
  gem.add_dependency 'activesupport'
  gem.add_development_dependency 'nokogiri'

  gem.add_dependency 'qat-core', '~> 6.0'

  gem.add_development_dependency 'qat-devel', '~> 6.0'
  gem.add_development_dependency 'httparty', '~> 0.15'
end