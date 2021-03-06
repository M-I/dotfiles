{ config, lib, pkgs, ...}: with lib;
{
	# Hostname
	networking.hostName = "nixos-p50";

	services.xserver = {

		# Graphic
		videoDrivers = ["intel nvidia"];

		# Notebook
		synaptics.enable = true;
		synaptics.twoFingerScroll = true;
	};

	# Hardware
	hardware = {
	    bumblebee = {
		      #connectDisplay = true;
			  enable = true;
		};
	};

	# Bootloader
	boot.loader.systemd-boot.enable = true;
	boot.loader.efi.canTouchEfiVariables = true;
}
