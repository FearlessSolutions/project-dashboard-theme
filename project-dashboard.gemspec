# frozen_string_literal: true

require_relative "theme_version"

Gem::Specification.new do |spec|
  spec.name          = "project-dashboard"
  spec.version       = ProjectDashboard::VERSION
  spec.authors       = ["Tiffany Forkner"]
  spec.email         = ["tforkner@fearless.com"]
  
  spec.summary       = "Jekyll theme for displaying software project reports (e.g. Playwright reports, code coverage reports, GitHub release notes)"
  spec.homepage      = "https://github.com/FearlessSolutions/project-dashboard-theme"
  spec.license       = "MIT"

  spec.metadata["plugin_type"] = "theme"

  spec.files = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r!^(assets|_(data|includes|layouts|plugins)/|(LICENSE|README)((\.(txt|md|markdown)|$)))!i)
  end

  spec.required_ruby_version = ">= 2.7.0"

  spec.add_runtime_dependency "jekyll", "~> 4.4"
  spec.add_runtime_dependency "tailwindcss-ruby", ">=4"
  spec.add_runtime_dependency "jekyll-tailwind"
end
