# -*-ruby-*-

$:.push File.expand_path(File.join(File.dirname(__FILE__), "lib"))

Gem::Specification.new do |s|
  s.name              = 'vagrant-guest-omnios'
  s.version           = '0.3.0'
  s.authors           = 'Mitchell Hashimoto, Mark Harrison, Clinton Wolfe'
  s.email             = 'info@hashicorp.com'
  s.homepage          = 'http://github.com/clintoncwolfe/vagrant-guest-omnios'
  s.rubyforge_project = 'vagrant-guest-omnios'
  s.summary           = 'Vagrant 1.7+ plugin to provide guest support for omnios (interim prior to core support)'
  s.description       = 'Vagrant 1.7+ plugin to provide guest support for omnios (interim prior to core support), yep.'
  s.files = ["README.md"] + Dir["lib/**/*.rb"]
end
