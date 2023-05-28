# List the devel packages installed | meant to be ran on fedora linux
sudo dnf repoquery --userinstalled | grep devel > devel-list.txt
sudo dnf repoquery --userinstalled | grep -v devel > program-list.txt
