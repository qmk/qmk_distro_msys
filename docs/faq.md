# Frequently Asked Questions

## Why is `<action>` so slow?

This is a general issue with MSYS2. File IO heavy operations, such as git queries or compilation are just generally slower under MSYS2. Current QMK build processes exaggerate the problem (for example in its discovery of available keyboards). More advanced users might be better served by one of the [other available environments](https://docs.qmk.fm/#/newbs_getting_started?id=set-up-your-environment). 

[This issue](https://github.com/qmk/qmk_distro_msys/issues/23) is tracking QMKs portion of the problem.

## Can I run this alongside regular MSYS2?

As it installs to its own location, both can be installed at the same time. However its worth noting the home directory would be shared between the two.

## Can I install additional tools?

Anything available to MSYS2 can also installed to QMK MSYS. For more details, refer to the [MSYS2 documentation](https://www.msys2.org/docs/package-management/).

## How do I keep my environment up to date?

Periodic updates will be available to cover both major MSYS2, and QMK CLI updates. Installing the 
[most recent release](https://github.com/qmk/qmk_distro_msys/releases/latest) will ensure you have the latest requirements to build QMK firmware.

Interim updates have to be performed manually. This can done within the terminal by running the following commands:


<details>
  <summary>Here be dragons</summary>

```console
# Update the package database and core system packages with:
pacman -Syu  

# If needed, close QMK MSYS, run it again from Start menu. Update the rest with:
pacman -Su

# Rerun bootstrap
export UV_PYTHON_PREFERENCE=only-managed
export UV_PYTHON_INSTALL_DIR=/opt/uv/bin
curl -fsSL https://install.qmk.fm | sh -s -- --confirm --skip-windows-drivers
```

</details>

## How do I configure Windows Terminal?

[Windows Terminal](https://apps.microsoft.com/store/detail/windows-terminal/9N0DX20HK701), which supports various shells, can also be extended to support QMK MSYS. Just tick the "Add QMK MSYS profile to Windows Terminal" checkbox during installation.

If you would prefer to do this manually, create a new empty profile in Windows Terminal settings:

 - **Name**: `QMK MSYS`
 - **Command line**: `%SystemDrive%/QMK_MSYS/shell_connector.cmd`
 - **Icon**: `%SystemDrive%/QMK_MSYS/icon.ico`

Note that this example assumes that you have QMK MSYS installed to the default location (generally `C:\QMK_MSYS`).

## More Coming Soon...

::: tip Need help with something?
The best place to get quick support is going to be on our [Discord](https://discord.gg/qmk). There is usually somebody online, and there are a bunch of very helpful people there.
:::
