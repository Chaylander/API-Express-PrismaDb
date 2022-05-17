const { PrismaClient } = require("@prisma/client");
const prisma = new PrismaClient();

(async function main() {
    try {
        const woopa1 = await prisma.Explorer_2.upsert({
            where: { name: "Woopa1" },
            update: {},
            create: {
                name: "Woopa1",
                lang: "Español",
                missionComander: "Carlo",
                enrollments: 3,
                hasCertificate: true
            },
        });

        const woopa2 = await prisma.Explorer_2.upsert({
            where: { name: "Woopa2" },
            update: {},
            create: {
                name: "Woopa2",
                lang: "Ingles",
                missionComander: "Fernanda",
                enrollments: 1,
                hasCertificate: false
            },
        });

        const woopa3 = await prisma.Explorer_2.upsert({
            where: { name: "Woopa3" },
            update: {},
            create: {
                name: "Woopa3",
                lang: "Jp",
                missionComander: "Fernanda",
                enrollments: 1,
                hasCertificate: true
            },
        });


        console.log("Create 3 woopas in the database");
    } catch(e) {
        console.error(e);
        process.exit(1);
    } finally {
        await prisma.$disconnect();
    }
})();