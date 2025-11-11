import { Router } from "express";
import { PrismaClient } from "@prisma/client";

const router=Router();
const prisma=new PrismaClient();


router.get("/", async (req, res) => {
  try {
    const jobs=await prisma.jOB.findMany({
      take: 20, 
      orderBy:{id: "desc"},
    });
    res.json(jobs);
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: "Failed to fetch jobs" });
  }
});

export default router;