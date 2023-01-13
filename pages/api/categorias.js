import { PrismaClient } from '@prisma/client';//se importa siempre que se vaya a interactuar con la base de datos


const prisma = new PrismaClient();

export default async function handler(req, res) {
  const categorias = await prisma.categoria.findMany({
    include: {
      productos:true,
    }
  });
  res.status(200).json(categorias)
}
