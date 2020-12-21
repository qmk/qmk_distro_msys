module.exports = {
    dest:'.build/docs',
    temp:'.build/temp',
    base:'/qmk_distro_msys/',
    head: [
        ['link', { rel: 'icon', href: '/logo.png' }]
    ],
    title: 'QMK MSYS',
    description: 'The one-click installer for MSYS2 + QMK CLI',
    themeConfig: {
        logo: '/logo.png',
        search: false,
        lastUpdated: false,
    }
};
