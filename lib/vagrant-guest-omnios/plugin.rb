require "vagrant"

module VagrantPlugins
  module GuestOmniOS
    class Plugin < Vagrant.plugin("2")
      name "OmniOS guest."
      description "OmniOS guest support."

      guest("omnios", "solaris")  do
        require File.expand_path("../guest", __FILE__)
        Guest
      end

      guest_capability("omnios", "change_host_name") do
        require_relative "cap/change_host_name"
        Cap::ChangeHostName
      end

      guest_capability("omnios", "mount_nfs_folder") do
        require_relative "cap/mount_nfs_folder"
        Cap::MountNFSFolder
      end

      guest_capability(:omnios, :chef_installed) do
        require_relative "cap/chef_installed"
        Cap::ChefInstalled
      end

      guest_capability(:omnios, :chef_install) do
        require_relative "cap/chef_install"
        Cap::ChefInstall
      end

      guest_capability(:omnios, :insert_public_key) do
        require_relative "cap/insert_public_key"
        Cap::InsertPublicKey
      end

      guest_capability(:omnios, :remove_public_key) do
        require_relative "cap/remove_public_key"
        Cap::RemovePublicKey
      end

    end
  end
end
