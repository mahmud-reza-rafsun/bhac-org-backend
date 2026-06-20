/*
  Warnings:

  - Made the column `image` on table `Insight` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE "Insight" ADD COLUMN     "category" TEXT,
ALTER COLUMN "image" SET NOT NULL;
