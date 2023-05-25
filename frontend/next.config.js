/* @type {import('next').NextConfig} */

const nextConfig = {
    i18n: {
        defaultLocale: 'en',
        locales: ['en', 'ru'],
    },
    reactStrictMode: true, // может быть нужен для dev режима, может производить рендер 2 раза
    images: {
        remotePatterns: [
            {
                hostname: "localhost",
            },
        ],
    },
}

module.exports = nextConfig
