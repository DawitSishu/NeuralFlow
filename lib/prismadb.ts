import { PrismaClient } from "@prisma/client";

declare global {
  var prisma: PrismaClient;
}

const prismadb = globalThis.prisma || new PrismaClient();

if (process.env.NODE_ENV !== "production") globalThis.prisma = prismadb;

export default prismadb;
// Optimize database connection - Mon Jul 21 17:57:09 EAT 2025
