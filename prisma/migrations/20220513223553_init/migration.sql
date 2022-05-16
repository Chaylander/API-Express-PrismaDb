-- CreateTable
CREATE TABLE "Explorer" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "lang" TEXT NOT NULL,
    "missionComander" TEXT NOT NULL,
    "enrollments" INTEGER NOT NULL,
    "hasCertificate" BOOLEAN NOT NULL,

    CONSTRAINT "Explorer_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Explorer_name_key" ON "Explorer"("name");

-- CreateIndex
CREATE UNIQUE INDEX "Explorer_lang_key" ON "Explorer"("lang");

-- CreateIndex
CREATE UNIQUE INDEX "Explorer_missionComander_key" ON "Explorer"("missionComander");

-- CreateIndex
CREATE UNIQUE INDEX "Explorer_enrollments_key" ON "Explorer"("enrollments");

-- CreateIndex
CREATE UNIQUE INDEX "Explorer_hasCertificate_key" ON "Explorer"("hasCertificate");
