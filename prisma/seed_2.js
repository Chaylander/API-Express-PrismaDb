const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();

(async function main() {
  try {
    const woopa = await prisma.explorer_2.upsert({
        where: { name: 'Woopa' },
        update: {},
        create: {
            name: 'Woopa',
            lang: 'Español',
            missionComander: 'Carlo',
            enrollments: 3,
            hasCertificate: true
        },
    });

    const woopa2 = await prisma.explorer_2.upsert({
        where: { name: 'Woopa' },
        update: {},
        create: {
            name: 'Woopa2',
            lang: 'Ingles',
            missionComander: 'Hola',
            enrollments: 1,
            hasCertificate: false
        },
    });

    
    const woopa3 = await prisma.explorer_2.upsert({
        where: { name: 'Woopa' },
        update: {},
        create: {
            name: 'Woopa3',
            lang: 'Ingles',
            missionComander: 'Roman',
            enrollments: 1,
            hasCertificate: false
        },
    });


    console.log('Create 3 woopas in the database');
  } catch(e) {
    console.error(e);
    process.exit(1);
  } finally {
    await prisma.$disconnect();
  }
})();