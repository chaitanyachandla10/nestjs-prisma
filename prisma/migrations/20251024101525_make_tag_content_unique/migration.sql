/*
  Warnings:

  - A unique constraint covering the columns `[content]` on the table `Tag` will be added. If there are existing duplicate values, this will fail.

*/
-- AlterTable
ALTER TABLE "_ProductTags" ADD CONSTRAINT "_ProductTags_AB_pkey" PRIMARY KEY ("A", "B");

-- DropIndex
DROP INDEX "public"."_ProductTags_AB_unique";

-- CreateIndex
CREATE UNIQUE INDEX "Tag_content_key" ON "Tag"("content");
