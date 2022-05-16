/*
  Warnings:

  - You are about to drop the `Explorer` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "Explorer";

-- CreateTable
CREATE TABLE "Explorer_2" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "lang" TEXT NOT NULL,
    "missionComander" TEXT NOT NULL,
    "enrollments" INTEGER NOT NULL,
    "hasCertificate" BOOLEAN NOT NULL,

    CONSTRAINT "Explorer_2_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Explorer_2_name_key" ON "Explorer_2"("name");

-- CreateIndex
CREATE UNIQUE INDEX "Explorer_2_lang_key" ON "Explorer_2"("lang");

-- CreateIndex
CREATE UNIQUE INDEX "Explorer_2_missionComander_key" ON "Explorer_2"("missionComander");

-- CreateIndex
CREATE UNIQUE INDEX "Explorer_2_enrollments_key" ON "Explorer_2"("enrollments");

-- CreateIndex
CREATE UNIQUE INDEX "Explorer_2_hasCertificate_key" ON "Explorer_2"("hasCertificate");
