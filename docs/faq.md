# Frequently Asked Questions

## Why is `<action>` so slow?

This is a general issue with MSYS2. File IO heavy operations, such as git queries or compilation are just generally slower under MSYS2. Current QMK build processes exaggerate the problem (for example in its discovery of available keyboards). More advanced users might be better served by one of the [other available environments](https://docs.qmk.fm/#/newbs_getting_started?id=set-up-your-environment). 

<https://github.com/qmk/qmk_distro_msys/issues/23> is tracking QMKs portion of the problem.

## Can I run this alongside regular MSYS2?

As it installs to its own location, both can be installed at the same time. However its worth noting the home directory would be shared between the two.

## Can I install additional tools?

Anything available to MSYS2 can also installed to QMK MSYS. For more details, refer to the [MSYS2 documentation](https://www.msys2.org/docs/package-management/).

## How do I keep my environment up to date?

Periodic updates will be available to cover both major MSYS2, and QMK CLI updates. Installing the 
[most recent release](https://github.com/qmk/qmk_distro_msys/releases/latest) will ensure you have the latest requirements to build QMK firmware.

Interim updates have to be performed manually. This can done within the terminal by running the following commands:

```console
# Update the package database and core system packages with:
pacman -Syu  

# If needed, close QMK MSYS, run it again from Start menu. Update the rest with:
pacman -Su

# update QMK CLI
python3 -m pip install qmk --upgrade
```

## How do I configure Windows Terminal?

[Windows Terminal](https://www.microsoft.com/en-us/p/windows-terminal/9n0dx20hk701?activetab=pivot:overviewtab), which supports various shells, can also be extended to support QMK MSYS.

In the tab dropdown menu, select `Settings` which opens a code editor showing a JSON configuration file. Insert the example profiles shown below under the profiles key.

Note that the example below assumes that you have QMK MSYS installed to the default location.

```json
"profiles": {
  "list":
  [
    // ...
    {
      "guid": "{1ca2e875-5a87-40f8-b55c-e7ec84354a92}",
      "name": "QMK MSYS",
      "commandline": "%SystemDrive%/QMK_MSYS/msys2_shell.cmd -defterm -no-start -mingw64",
      "icon": "%SystemDrive%/QMK_MSYS/icon.ico"
    }
```

## More Coming Soon...

::: tip Need help with something?
The best place to get quick support is going to be on our [Discord](https://discord.gg/Uq7gcHh). There is usually somebody online, and there are a bunch of very helpful people there.
:::
