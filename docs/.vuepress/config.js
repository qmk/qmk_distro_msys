module.exports = {
    dest: '.build/docs',
    temp: '.build/temp',
    base: '/qmk_distro_msys/',
    head: [
        ['link', { rel: 'icon', href: '/logo.png' }]
    ],
    title: 'QMK MSYS',
    description: 'The one-click installer for MSYS2 + QMK CLI',
    themeConfig: {
        nav: [
            { text: 'Discord', link: 'https://discord.gg/Uq7gcHh' },
            { text: 'GitHub', link: 'https://github.com/qmk/qmk_distro_msys' }
        ],
        logo: '/logo.png',
        search: false,
        lastUpdated: false,
        sidebar: [
            '/guide',
            '/faq',
            '/dev',
        ],
    },
    plugins: ['vuepress-plugin-medium-zoom'],
};
