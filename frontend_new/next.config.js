// @ts-check
const withNextIntl = require('next-intl/plugin')();

/** @type {import('next').NextConfig} */
const nextConfig = {
    reactStrictMode: true, // может быть нужен для dev режима, может производить рендер 2 раза
    output: 'standalone',
    images: {
        remotePatterns: [
            {
                hostname: "localhost",
            },
        ],
    },
};

module.exports = withNextIntl(nextConfig);
