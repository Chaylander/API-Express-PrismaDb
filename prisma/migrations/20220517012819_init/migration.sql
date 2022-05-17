/*
  Warnings:

  - You are about to alter the column `name` on the `Explorer_2` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(255)`.
  - You are about to alter the column `lang` on the `Explorer_2` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(255)`.
  - You are about to alter the column `missionComander` on the `Explorer_2` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(255)`.
  - You are about to alter the column `hasCertificate` on the `Explorer_2` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(255)`.

*/
-- DropIndex
DROP INDEX "Explorer_2_enrollments_key";

-- DropIndex
DROP INDEX "Explorer_2_hasCertificate_key";

-- DropIndex
DROP INDEX "Explorer_2_lang_key";

-- DropIndex
DROP INDEX "Explorer_2_missionComander_key";

-- DropIndex
DROP INDEX "Explorer_2_name_key";

-- AlterTable
ALTER TABLE "Explorer_2" ALTER COLUMN "name" SET DATA TYPE VARCHAR(255),
ALTER COLUMN "lang" SET DATA TYPE VARCHAR(255),
ALTER COLUMN "missionComander" SET DATA TYPE VARCHAR(255),
ALTER COLUMN "enrollments" SET DEFAULT 0,
ALTER COLUMN "hasCertificate" SET DATA TYPE VARCHAR(255);
