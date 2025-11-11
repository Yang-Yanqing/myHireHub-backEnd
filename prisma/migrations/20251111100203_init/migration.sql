-- CreateTable
CREATE TABLE "JOB" (
    "id" SERIAL NOT NULL,
    "externalId" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "company" TEXT NOT NULL,
    "location" TEXT NOT NULL,
    "type" TEXT,
    "description" TEXT,
    "url" TEXT,
    "postedAt" TIMESTAMP(3),
    "source" TEXT,
    "rawJson" JSONB,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "JOB_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "JOB_externalId_key" ON "JOB"("externalId");

-- CreateIndex
CREATE INDEX "JOB_company_idx" ON "JOB"("company");

-- CreateIndex
CREATE INDEX "JOB_location_idx" ON "JOB"("location");
