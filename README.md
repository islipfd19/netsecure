#####################################################################################
#      This file is part of netsecure - https://github.com/islipfd19/netsecure.git
#      Copyright (C) 2016 James Millar (islipfd19@gmail.com)
#
#  This Program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 3, or (at your option)
#  any later version.
#
#  This Program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with netsecure; see the file COPYING.  If not, write to
#  the Free Software Foundation, 51 Franklin Street, Suite 500, Boston, MA 02110, USA.
#  http://www.gnu.org/copyleft/gpl.html
######################################################################################

A Linux daemon to monitor the existence of new/foreign network objects that
have connected to the local network. If one is detected, it is added to the local
firewall (or another firewall or shorewall firewall running on another *nix
server/workstation. In order for that to work properly, the user in the configuration
file must have authorized ssh keys without a password setup properly.

In order for this daemon to work properly, nmap and sendmail (or a similar mail
program) must be installed and setup correctly.
