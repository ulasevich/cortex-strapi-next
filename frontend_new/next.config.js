/** @type {import('next').NextConfig} */
const nextConfig = {
    reactStrictMode: true, // может быть нужен для dev режима, может производить рендер 2 раза
    output: 'standalone',
    images: {
        // domains: ["localhost", "learn.microsoft.com", "cx-test.com"],
        remotePatterns: [
            {
                protocol: 'http',
                hostname: 'localhost',
                port: '1337',
                pathname: 'localhost:1337/',
            },
            {
                protocol: 'http',
                hostname: 'host.docker.internal',
                port: '1337',
            },
            {
                protocol: 'http',
                hostname: '127.0.0.1',
                port: '1337',
                pathname: '127.0.0.1:1337/**',
            },
            {
                protocol: 'http',
                hostname: 'cx-test.com',
                pathname: '/uploads/**',
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
