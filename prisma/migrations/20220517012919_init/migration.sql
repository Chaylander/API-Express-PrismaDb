/*
  Warnings:

  - A unique constraint covering the columns `[name]` on the table `Explorer_2` will be added. If there are existing duplicate values, this will fail.

*/
-- AlterTable
ALTER TABLE "Explorer_2" ALTER COLUMN "name" SET DATA TYPE TEXT;

-- CreateIndex
CREATE UNIQUE INDEX "Explorer_2_name_key" ON "Explorer_2"("name");
