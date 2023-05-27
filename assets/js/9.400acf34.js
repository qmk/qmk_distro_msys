(window.webpackJsonp=window.webpackJsonp||[]).push([[9],{283:function(e,t,a){"use strict";a.r(t);var o=a(14),s=Object(o.a)({},(function(){var e=this,t=e._self._c;return t("ContentSlotsDistributor",{attrs:{"slot-key":e.$parent.slotKey}},[t("h1",{attrs:{id:"frequently-asked-questions"}},[t("a",{staticClass:"header-anchor",attrs:{href:"#frequently-asked-questions"}},[e._v("#")]),e._v(" Frequently Asked Questions")]),e._v(" "),t("h2",{attrs:{id:"why-is-action-so-slow"}},[t("a",{staticClass:"header-anchor",attrs:{href:"#why-is-action-so-slow"}},[e._v("#")]),e._v(" Why is "),t("code",[e._v("<action>")]),e._v(" so slow?")]),e._v(" "),t("p",[e._v("This is a general issue with MSYS2. File IO heavy operations, such as git queries or compilation are just generally slower under MSYS2. Current QMK build processes exaggerate the problem (for example in its discovery of available keyboards). More advanced users might be better served by one of the "),t("a",{attrs:{href:"https://docs.qmk.fm/#/newbs_getting_started?id=set-up-your-environment",target:"_blank",rel:"noopener noreferrer"}},[e._v("other available environments"),t("OutboundLink")],1),e._v(".")]),e._v(" "),t("p",[t("a",{attrs:{href:"https://github.com/qmk/qmk_distro_msys/issues/23",target:"_blank",rel:"noopener noreferrer"}},[e._v("This issue"),t("OutboundLink")],1),e._v(" is tracking QMKs portion of the problem.")]),e._v(" "),t("h2",{attrs:{id:"can-i-run-this-alongside-regular-msys2"}},[t("a",{staticClass:"header-anchor",attrs:{href:"#can-i-run-this-alongside-regular-msys2"}},[e._v("#")]),e._v(" Can I run this alongside regular MSYS2?")]),e._v(" "),t("p",[e._v("As it installs to its own location, both can be installed at the same time. However its worth noting the home directory would be shared between the two.")]),e._v(" "),t("h2",{attrs:{id:"can-i-install-additional-tools"}},[t("a",{staticClass:"header-anchor",attrs:{href:"#can-i-install-additional-tools"}},[e._v("#")]),e._v(" Can I install additional tools?")]),e._v(" "),t("p",[e._v("Anything available to MSYS2 can also installed to QMK MSYS. For more details, refer to the "),t("a",{attrs:{href:"https://www.msys2.org/docs/package-management/",target:"_blank",rel:"noopener noreferrer"}},[e._v("MSYS2 documentation"),t("OutboundLink")],1),e._v(".")]),e._v(" "),t("h2",{attrs:{id:"how-do-i-keep-my-environment-up-to-date"}},[t("a",{staticClass:"header-anchor",attrs:{href:"#how-do-i-keep-my-environment-up-to-date"}},[e._v("#")]),e._v(" How do I keep my environment up to date?")]),e._v(" "),t("p",[e._v("Periodic updates will be available to cover both major MSYS2, and QMK CLI updates. Installing the\n"),t("a",{attrs:{href:"https://github.com/qmk/qmk_distro_msys/releases/latest",target:"_blank",rel:"noopener noreferrer"}},[e._v("most recent release"),t("OutboundLink")],1),e._v(" will ensure you have the latest requirements to build QMK firmware.")]),e._v(" "),t("p",[e._v("Interim updates have to be performed manually. This can done within the terminal by running the following commands:")]),e._v(" "),t("details",[t("summary",[e._v("Here be dragons")]),e._v(" "),t("div",{staticClass:"language-console extra-class"},[t("pre",{pre:!0,attrs:{class:"language-text"}},[t("code",[e._v("# Update the package database and core system packages with:\npacman -Syu  \n\n# If needed, close QMK MSYS, run it again from Start menu. Update the rest with:\npacman -Su\n")])])])]),e._v(" "),t("h2",{attrs:{id:"how-do-i-configure-windows-terminal"}},[t("a",{staticClass:"header-anchor",attrs:{href:"#how-do-i-configure-windows-terminal"}},[e._v("#")]),e._v(" How do I configure Windows Terminal?")]),e._v(" "),t("p",[t("a",{attrs:{href:"https://apps.microsoft.com/store/detail/windows-terminal/9N0DX20HK701",target:"_blank",rel:"noopener noreferrer"}},[e._v("Windows Terminal"),t("OutboundLink")],1),e._v(', which supports various shells, can also be extended to support QMK MSYS. Just tick the "Add QMK MSYS profile to Windows Terminal" checkbox during installation.')]),e._v(" "),t("p",[e._v("If you would prefer to do this manually, create a new empty profile in Windows Terminal settings:")]),e._v(" "),t("ul",[t("li",[t("strong",[e._v("Name")]),e._v(": "),t("code",[e._v("QMK MSYS")])]),e._v(" "),t("li",[t("strong",[e._v("Command line")]),e._v(": "),t("code",[e._v("%SystemDrive%/QMK_MSYS/shell_connector.cmd")])]),e._v(" "),t("li",[t("strong",[e._v("Icon")]),e._v(": "),t("code",[e._v("%SystemDrive%/QMK_MSYS/icon.ico")])])]),e._v(" "),t("p",[e._v("Note that this example assumes that you have QMK MSYS installed to the default location (generally "),t("code",[e._v("C:\\QMK_MSYS")]),e._v(").")]),e._v(" "),t("h2",{attrs:{id:"more-coming-soon"}},[t("a",{staticClass:"header-anchor",attrs:{href:"#more-coming-soon"}},[e._v("#")]),e._v(" More Coming Soon...")]),e._v(" "),t("div",{staticClass:"custom-block tip"},[t("p",{staticClass:"custom-block-title"},[e._v("Need help with something?")]),e._v(" "),t("p",[e._v("The best place to get quick support is going to be on our "),t("a",{attrs:{href:"https://discord.gg/Uq7gcHh",target:"_blank",rel:"noopener noreferrer"}},[e._v("Discord"),t("OutboundLink")],1),e._v(". There is usually somebody online, and there are a bunch of very helpful people there.")])])])}),[],!1,null,null,null);t.default=s.exports}}]);