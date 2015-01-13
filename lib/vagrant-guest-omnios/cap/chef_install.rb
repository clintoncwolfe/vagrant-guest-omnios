# require_relative "../../omnibus"
require Vagrant.source_root.to_s + '/plugins/provisioners/chef/omnibus'

module VagrantPlugins
  module GuestOmniOS
    module Cap
      module ChefInstall
        def self.chef_install(machine, version, prerelease, download_path)
          su_cmd = machine.config.solaris.suexec_cmd

          machine.communicate.execute("#{su_cmd} pkg list --no-refresh web/curl > /dev/null 2>&1 || pkg install -q --accept web/curl")

          command = VagrantPlugins::Chef::Omnibus.build_command(version, prerelease, download_path)
          machine.communicate.execute(su_cmd + ' ' + command)
        end
      end
    end
  end
end
