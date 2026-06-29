/*
  Warnings:

  - You are about to drop the column `userId` on the `donation` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "donation" DROP CONSTRAINT "donation_userId_fkey";

-- DropIndex
DROP INDEX "donation_userId_idx";

-- AlterTable
ALTER TABLE "donation" DROP COLUMN "userId";
