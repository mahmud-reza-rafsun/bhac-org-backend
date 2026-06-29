-- CreateTable
CREATE TABLE "bkashDonation" (
    "id" TEXT NOT NULL,
    "fullName" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "paymentMethod" TEXT NOT NULL,
    "amount" DOUBLE PRECISION NOT NULL,
    "payPhoneNumber" TEXT NOT NULL,
    "transactionId" TEXT NOT NULL,
    "description" TEXT NOT NULL,

    CONSTRAINT "bkashDonation_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "bkashDonation_email_key" ON "bkashDonation"("email");

-- CreateIndex
CREATE UNIQUE INDEX "bkashDonation_transactionId_key" ON "bkashDonation"("transactionId");
