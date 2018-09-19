# Void Linux XBPS Configuration Files

This directory contains the following files:
- 00-repository-main.conf
- 10-repository-nonfree.conf
- 10-repository-multilib.conf
- 10-repository-multilib-nonfree.conf

These files are repository configuration URLs that aren't the default.  This has resulted in better download times for me.

Simply move these files into /etc/xbps.d/ and refresh the repolist.
>sudo xbps-install -S