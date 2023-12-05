/*
  Warnings:

  - The `status` column on the `UserStatus` table would be dropped and recreated. This will lead to data loss if there is data in the column.

*/
-- CreateEnum
CREATE TYPE "Status" AS ENUM ('INVITED', 'DECLINED', 'ACCEPTED');

-- DropIndex
DROP INDEX "Pairings_eventId_key";

-- DropIndex
DROP INDEX "Pairings_personId_key";

-- DropIndex
DROP INDEX "Pairings_santaId_key";

-- DropIndex
DROP INDEX "ThankYou_eventId_key";

-- DropIndex
DROP INDEX "ThankYou_toUserId_key";

-- DropIndex
DROP INDEX "ThankYou_userId_key";

-- DropIndex
DROP INDEX "UserStatus_eventId_key";

-- DropIndex
DROP INDEX "UserStatus_userId_key";

-- DropIndex
DROP INDEX "WishList_eventId_key";

-- DropIndex
DROP INDEX "WishList_userId_key";

-- AlterTable
ALTER TABLE "UserStatus" DROP COLUMN "status",
ADD COLUMN     "status" "Status" NOT NULL DEFAULT 'INVITED';

-- DropEnum
DROP TYPE "UserStatusEnum";
