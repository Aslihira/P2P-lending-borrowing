/*
  Warnings:

  - A unique constraint covering the columns `[userId]` on the table `Wallet` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `status` to the `Repayment` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userId` to the `Repayment` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Repayment" ADD COLUMN     "status" TEXT NOT NULL,
ADD COLUMN     "userId" TEXT NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "Wallet_userId_key" ON "Wallet"("userId");
