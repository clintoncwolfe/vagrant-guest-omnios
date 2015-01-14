vagrant-guest-omnios
========================

A Vagrant 1.7+ plugin to provide support for the OmniOS operating system.

This code is a modified fork of the omnios plugin by mitchellh at https://github.com/mitchellh/vagrant/tree/1.7.2/plugins/guests/omnios/plugin.rb.  

* It adds the support for the chef_install and chef_installed guest capabilities submitted in PR #5179.  Once that PR is merged, there is no need to use this plugin.
* It adds support for the insert_public_key and remove_public_key guest capabilities submitted in PR #5182.  Once that PR is merged, there is no need to use this plugin.

See LICENSE.
