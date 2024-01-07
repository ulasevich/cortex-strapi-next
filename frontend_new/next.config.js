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
    eslint: {
        // Warning: This allows production builds to successfully complete even if
        // your project has ESLint errors.
        ignoreDuringBuilds: true,
    },
};

module.exports = nextConfig;
