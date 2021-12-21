# GoNixSys

My Configuration Repo for NixOS

## Installation

### Remote Login with SSH (Optional)

On the machine you have to set a password to activate ssh.

```sh
passwd
```

On the remote machine you can login with

```sh
ssh -o PreferredAuthentications=password -o PubkeyAuthentication=no -p PORT nixos@ip-address
```

### Disk preparation

```sh
sudo -i

lsblk

wipefs -a /dev/sda
```

### Disk Partition

```sh
export ROOT_DISK=/dev/sda

# Create boot partition first
parted -a opt --script "${ROOT_DISK}" \
    mklabel gpt \
    mkpart primary fat32 0% 1GB \
    mkpart primary 1GB 100% \
    set 1 esp on \
    name 1 boot \
    set 2 lvm on \
    name 2 root

fdisk /dev/sda -l
```

### Encrypt Primary Disk

```sh
cryptsetup luksFormat /dev/disk/by-partlabel/root

cryptsetup luksOpen /dev/disk/by-partlabel/root root

pvcreate /dev/mapper/root

vgcreate vg /dev/mapper/root

lvcreate -L 8G -n swap vg

lvcreate -l '100%FREE' -n root vg

lvdisplay
```

### Format Disks

```sh
mkfs.fat -F 32 -n boot /dev/disk/by-partlabel/boot

mkfs.ext4 -L root /dev/vg/root

mkswap -L swap /dev/vg/swap

swapon -s
```

## Mount

```sh
mount /dev/disk/by-label/root /mnt

mkdir -p /mnt/boot

mount /dev/disk/by-label/boot /mnt/boot

swapon /dev/vg/swap
```

### Create GnuPG Keys for password encryption

Alternativly you can import existig keys.

```sh
gpg2 --expert --full-gen-key

gpg --output ../private.gpg --armor --export-secret-key "id"

gpg --homedir '~/.gnupg' --pinentry-mode loopback --output private.gpg --armor --export-secret-key "id"

gpg --edit-key "id"

> trust
> quit
```

### Store enrypted password files with git-crypt

1. Initialize git-crypt

```sh
git crypt init

git crypt add-gpg-user lutz0go@gmail.com

git crypt export-key ../gitgpg.key

mkdir secrets

echo ".secrets/** filter=git-crypt diff=git-crypt" > .gitattributes

# clean git with git stash or push

git crypt lock
git crypt unlock
```

2. Create password file and source it

```sh

```

### Install system

> Note: Use the desired target host after the '#'.
> They are parts of `flake.nix`.

```sh
nix-shell -p git nixFlakes

git clone https://github.com/tom-tubeless/GoNixSys.git

nixos-install --root /mnt --flake /home/lgo/GoNixSys/#reiner --impure

reboot

GoNixSys/update-system.sh

GoNixSys/apply-system.sh
```

## Home-Manager Installation

Installation is very straightforward.

1. Add home manager nix channel to users channel.
   > Note: make sure you are logged in as normal users and not as a root.
   > Note: Pay attention to the release version that should be the same as your NixOs version. In the below example, we use the latest NixOs and Home Manager release.

```sh
nix-channel --add https://github.com/nix-community/home-manager/archive/release-21.11.tar.gz home-manager
```

2. Update newly added channel

```sh
nix-channel --update
```

3. Home Manager installation
   > Note: Before installation is a good idea to logoff and login again before continuing with installation to avoid any potential issues with the missing path to the newly updated channel.

```sh
nix-shell '<home-manager>' -A install
```

```sh
nix flake update ~/GoNixSys/home-manager

home-manager switch --flake ~/GoNixSys/home-manager/#$USER -v
```

<!-- ```sh
gpg2 --expert --full-gen-key

gpg --output ../private.gpg --armor --export-secret-key "id"

gpg --homedir '~/.gnupg' --pinentry-mode loopback --output private.gpg --armor --export-secret-key "id"

gpg --edit-key "id"

> trust
> quit

git crypt init

git crypt add-gpg-user lutz0go@gmail.com

git crypt export-key ../gitgpg.key

mkdir secrets

echo ".secrets/** filter=git-crypt diff=git-crypt" > .gitattributes

git add .

git commit -m "Initial commit"

git crypt lock
git crypt unlock
``` -->
