/* @type {import('next').NextConfig} */
const { i18n } = require('./next-i18next.config'); /* eslint @typescript-eslint/no-var-requires: "off" */

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
