const express = require('express');
const app = express();
app.use(express.json());
const port = process.env.PORT || 3000;

// Require para usar Prisma
const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();

app.get('/', (req, res) => {
  res.json({message: 'alive'});
});

app.listen(port, () => {
  console.log(`Listening to requests on port ${port}`);
});

app.get('/woopas', async (req, res) => {
    const allExplorers =  await prisma.explorer_2.findMany({});
    res.json(allExplorers);
});

app.get('/woopas/:id', async (req, res) => {
    const id = req.params.id;
    const woopa = await prisma.explorer_2.findUnique({where: {id: parseInt(id)}});
    res.json(woopa);
});

