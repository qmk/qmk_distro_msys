# Frequently Asked Questions

## Can I run this alongside regular MSYS2?

As it installs to its own location, both can be installed at the same time. However its worth noting the home directory would be shared between the two.

## Can I install additional tools?

Anything available to MSYS2 can also installed to QMK MSYS. For more details, refer to the [MSYS2 documentation](https://www.msys2.org/docs/package-management/).

## How do I keep my environment up to date?

Periodic updates will be available to cover both major MSYS2, and QMK CLI updates. Installing the 
[most recent release](https://github.com/zvecr/qmk_distro_msys/releases) will ensure you have the latest requirements to build QMK firmware.

Interim updates have to be performed manually. This can done within the terminal by running the following commands:

```console
# Update the package database and core system packages with:
pacman -Syu  

# If needed, close QMK MSYS, run it again from Start menu. Update the rest with:
pacman -Su

# update QMK CLI
python3 -m pip install qmk --upgrade
```

## More Coming Soon...

::: tip Need help with something?
The best place to get quick support is going to be on our [Discord](https://discord.gg/Uq7gcHh). There is usually somebody online, and there are a bunch of very helpful people there.
:::
