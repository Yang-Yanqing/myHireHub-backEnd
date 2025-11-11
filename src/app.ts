import express from "express";
import cors from "cors";
import jobsRouter from "./routes/jobs.route"

const app = express();

app.use(cors());
app.use(express.json());


app.use("/api/jobs", jobsRouter);


app.get("/api/health", (_, res) => res.json({ status: "ok" }));

export default app;
