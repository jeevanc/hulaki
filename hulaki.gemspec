# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hulaki/version'

Gem::Specification.new do |spec|
  spec.name     = 'hulaki'
  spec.version  = Hulaki::VERSION
  spec.authors  = ['Shiva Bhusal']
  spec.email    = ['hotline.shiva@gmail.com']

  spec.summary  = %q{Hulaki is basically a CLI tool to search contact details \
                          exported already in CSV format, send SMS and Emails in a single command.}

  spec.description = %Q{We developers don't have time to grab mobile phones, \
                          slide the screen, press pin numbers, open contact list \
                          and search the person you are looking for. Instead it would \
                          me much more easier if we could press some shortcut key \
                          to open terminal and enter a command to \
                          search the contact details and send message if we like.}

  spec.homepage = 'https://github.com/shivabhusal/hulaki'
  spec.license  = 'MIT'

  spec.files          = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir         = 'exe'
  spec.executables    = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths  = ['lib']

  spec.add_development_dependency 'bundler',  '~> 1.10'
  spec.add_development_dependency 'rake',     '~> 10.0'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rspec'

  spec.add_runtime_dependency 'amatch',         '~> 0.3.1'
  spec.add_runtime_dependency 'twilio-ruby',    '~> 4.11.1'
  spec.add_runtime_dependency 'nexmo',          '~> 4.6.0'
  spec.add_runtime_dependency 'mail',           '~> 2.6.3'
  spec.add_runtime_dependency 'smarter_csv',    '1.1.0'
  spec.add_runtime_dependency 'terminal-table', '1.8.0'
  spec.add_runtime_dependency 'clipboard',      '1.1.0'

  spec.post_install_message = 'Please run `$ hulaki -i` to install Configuration files so that you can modify later'
end
