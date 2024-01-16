/** @type {import('next').NextConfig} */
const nextConfig = {
    // reactStrictMode: true, // может быть нужен для dev режима, может производить рендер 2 раза
    output: 'standalone',
    images: {
        // domains: ["localhost", "learn.microsoft.com"],
        remotePatterns: [
            {
                protocol: 'http',
                hostname: 'localhost',
                port: '1337',
                pathname: '/uploads/**',
            },
            {
                protocol: 'http',
                hostname: 'cx-test.com',
            },
            {
                protocol: 'https',
                hostname: 'learn.microsoft.com',
            },
        ],
    },
    eslint: {
        // Warning: This allows production builds to successfully complete even if
        // your project has ESLint errors.
        ignoreDuringBuilds: true,
    },
};

module.exports = nextConfig;
