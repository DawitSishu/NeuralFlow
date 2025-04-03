/** @type {import('next').NextConfig} */
const nextConfig = {
  images: {
    remotePatterns: [
      {
        hostname: "googleusercontent.com",
      },
      {
        hostname: "oaidalleapiprodscus.blob.core.windows.net",
      },
      {
        hostname: "cdn.openai.com",
      },
    ],
  },
};

module.exports = nextConfig;
// Add Next.js configuration for production - Mon Jul 21 17:57:09 EAT 2025
