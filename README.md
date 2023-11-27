# iotbox

## Description

iotbox is a Fedora toolbox with some tools for serial connection and Platformio core

Installed tools:
  - tio              Serial terminal emulator
  - platformio core  IOT development environment
  - zsh              default shell

This is based on Universal Blue's boxkit.
Checkout (https://github.com/ublue-os/boxkit)

## How to use

### Create Box

If you use distrobox:

    distrobox create -i ghcr.io/pliveyns/iotbox -n iotbox
    distrobox enter iotbox
    
If you use toolbx:

    toolbox create -i ghcr.io/pliveyns/iotbox -c iotbox
    toolbox enter iotbox

## Verification

These images are signed with sisgstore's [cosign](https://docs.sigstore.dev/cosign/overview/). You can verify the signature by downloading the `cosign.pub` key from this repo and running the following command:

    cosign verify --key cosign.pub ghcr.io/pliveyns/iotbox
    
