/* @type {import('next').NextConfig} */
const { i18n } = require('./next-i18next.config');

const nextConfig = {
    i18n,
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
