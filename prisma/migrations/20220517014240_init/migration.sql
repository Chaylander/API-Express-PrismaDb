/*
  Warnings:

  - The `hasCertificate` column on the `Explorer_2` table would be dropped and recreated. This will lead to data loss if there is data in the column.

*/
-- AlterTable
ALTER TABLE "Explorer_2" DROP COLUMN "hasCertificate",
ADD COLUMN     "hasCertificate" BOOLEAN NOT NULL DEFAULT false;
