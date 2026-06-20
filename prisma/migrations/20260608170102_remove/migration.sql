/*
  Warnings:

  - You are about to drop the column `insightCategoryId` on the `Insight` table. All the data in the column will be lost.
  - You are about to drop the `InsightCategory` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "Insight" DROP CONSTRAINT "Insight_insightCategoryId_fkey";

-- AlterTable
ALTER TABLE "Insight" DROP COLUMN "insightCategoryId";

-- DropTable
DROP TABLE "InsightCategory";
