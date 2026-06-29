/*
  Warnings:

  - You are about to drop the `bkashDonation` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "bkashDonation";

-- CreateTable
CREATE TABLE "donation" (
    "id" TEXT NOT NULL,
    "fullName" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "paymentMethod" TEXT NOT NULL,
    "amount" DOUBLE PRECISION NOT NULL,
    "payPhoneNumber" TEXT NOT NULL,
    "transactionId" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "stripeEventId" TEXT,
    "paymentGatewayData" JSONB,
    "invoiceUrl" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "userId" TEXT NOT NULL,

    CONSTRAINT "donation_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "donation_email_key" ON "donation"("email");

-- CreateIndex
CREATE UNIQUE INDEX "donation_transactionId_key" ON "donation"("transactionId");

-- CreateIndex
CREATE UNIQUE INDEX "donation_stripeEventId_key" ON "donation"("stripeEventId");

-- CreateIndex
CREATE INDEX "donation_transactionId_idx" ON "donation"("transactionId");

-- CreateIndex
CREATE INDEX "donation_userId_idx" ON "donation"("userId");

-- AddForeignKey
ALTER TABLE "donation" ADD CONSTRAINT "donation_userId_fkey" FOREIGN KEY ("userId") REFERENCES "user"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
