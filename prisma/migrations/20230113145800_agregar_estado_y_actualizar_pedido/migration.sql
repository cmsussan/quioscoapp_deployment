/*
  Warnings:

  - You are about to drop the column `Pedido` on the `orden` table. All the data in the column will be lost.
  - Added the required column `pedido` to the `Orden` table without a default value. This is not possible if the table is not empty.

*/
-- DropIndex
DROP INDEX `Producto_categoriaId_fkey` ON `producto`;

-- AlterTable
ALTER TABLE `orden` DROP COLUMN `Pedido`,
    ADD COLUMN `estado` BOOLEAN NOT NULL DEFAULT false,
    ADD COLUMN `pedido` JSON NOT NULL;

-- AddForeignKey
ALTER TABLE `Producto` ADD CONSTRAINT `Producto_categoriaId_fkey` FOREIGN KEY (`categoriaId`) REFERENCES `Categoria`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
