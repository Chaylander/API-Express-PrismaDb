/*
  Warnings:

  - You are about to drop the column `enrollments` on the `Explorer` table. All the data in the column will be lost.
  - You are about to drop the column `hasCertificate` on the `Explorer` table. All the data in the column will be lost.
  - You are about to drop the column `lang` on the `Explorer` table. All the data in the column will be lost.
  - You are about to drop the column `missionComander` on the `Explorer` table. All the data in the column will be lost.
  - Added the required column `lastUpdated` to the `Explorer` table without a default value. This is not possible if the table is not empty.
  - Added the required column `mission` to the `Explorer` table without a default value. This is not possible if the table is not empty.
  - Added the required column `username` to the `Explorer` table without a default value. This is not possible if the table is not empty.

*/
-- DropIndex
DROP INDEX "Explorer_enrollments_key";

-- DropIndex
DROP INDEX "Explorer_hasCertificate_key";

-- DropIndex
DROP INDEX "Explorer_lang_key";

-- DropIndex
DROP INDEX "Explorer_missionComander_key";

-- AlterTable
ALTER TABLE "Explorer" DROP COLUMN "enrollments",
DROP COLUMN "hasCertificate",
DROP COLUMN "lang",
DROP COLUMN "missionComander",
ADD COLUMN     "azureCertification" BOOLEAN NOT NULL DEFAULT false,
ADD COLUMN     "dateCreated" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "lastUpdated" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "mission" VARCHAR(255) NOT NULL,
ADD COLUMN     "username" VARCHAR(255) NOT NULL;
