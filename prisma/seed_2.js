const { PrismaClient } = require("@prisma/client");
const prisma = new PrismaClient();

(async function main() {
    try {
        const woopa = await prisma.explorer_2.upsert({
            where: { name: "Woopa" },
            update: {},
            create: {
                name: "Woopa",
                lang: "Español",
                missionComander: "Carlo",
                enrollments: 3,
                hasCertificate: true
            },
        });

        const woopa1 = await prisma.explorer_2.upsert({
            where: { name: "Woopa1" },
            update: {},
            create: {
                name: "Woopa1",
                lang: "Ingles",
                missionComander: "Fernanda",
                enrollments: 1,
                hasCertificate: false
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