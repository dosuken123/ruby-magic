signing_key = File.expand_path('~/.gem/kwilczynski-private.pem')

Gem::Specification.new do |s|
  s.name    = 'ruby-magic'
  s.summary = 'File Magic in Ruby'

  s.description = (<<-EOS).gsub(/^[ ]+/, '')
    File Magic in Ruby.

    Simple interface to libmagic for Ruby Programming Language.
  EOS

  s.post_install_message = (<<-EOS).gsub(/^[ ]+/, '')
    Thank you for installing!
  EOS

  s.platform = Gem::Platform::RUBY
  s.version = File.read('VERSION').strip
  s.license = 'Apache-2.0'
  s.author = 'Krzysztof Wilczynski'
  s.email = 'kw@linux.com'
  s.homepage = 'https://github.com/kwilczynski/ruby-magic'

  s.required_ruby_version = '>= 2.3.0'
  s.rubygems_version = '>= 3.0.3'

  s.metadata = {
    'bug_tracker_uri'   => 'https://github.com/kwilczynski/ruby-magic/issues',
    'source_code_uri'   => 'https://github.com/kwilczynski/ruby-magic',
    'changelog_uri'     => 'https://github.com/kwilczynski/ruby-magic/blob/master/CHANGELOG.md',
    'documentation_uri' => 'https://www.rubydoc.info/gems/ruby-magic',
    'wiki_uri'          => 'https://github.com/kwilczynski/ruby-magic/wiki'
  }

  s.files = Dir['ext/**/*.{c,h,rb}'] +
            Dir['lib/**/*.rb'] +
            Dir['test/**/*.rb'] + %w(
              AUTHORS
              CHANGELOG.md
              CODE_OF_CONDUCT.md
              CONTRIBUTING.md
              COPYRIGHT
              Gemfile
              Guardfile
              LICENSE
              README.md
              Rakefile
              VERSION
              Vagrantfile
              kwilczynski-public.pem
              kwilczynski.asc
              ruby-magic.gemspec
            )

  s.require_paths << 'lib'
  s.extensions << 'ext/magic/extconf.rb'

  s.signing_key = signing_key if File.exist?(signing_key)
end
