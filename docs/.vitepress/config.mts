import { defineConfig } from "vitepress";

export default defineConfig({
    outDir: '../.build/docs',
    cacheDir: '../.build/temp',
    cleanUrls: true,

    title: 'QMK MSYS',
    description: 'A Windows one-click installer for the QMK CLI',

    head: [['link', { rel: 'icon', href: '/logo.png' }]],

    themeConfig: {
        logo: '/logo.png',
        sidebar: [
            { text: 'Getting Started', link: '/guide' },
            { text: 'Frequently Asked Questions', link: '/faq' },
            { text: 'Contributing', link: '/dev' },
        ],
        socialLinks: [
            { icon: "discord", link: "https://discord.gg/qmk" },
            { icon: "github", link: "https://github.com/qmk/qmk_distro_msys" },
        ],
        footer: {
            message: 'This project is maintained by QMK collaborators and contributors like you!'
        }
    }
});
