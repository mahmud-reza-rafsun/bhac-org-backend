import { Router } from "express";
import { checkAuth } from "../../middlewares/checkAuth";
import { Role } from "@prisma/client";
import { InsightController } from "./insights.controller";

const route = Router();

route.get(
    '/get-all-insights',
    InsightController.getAllInsights
);
route.post(
    '/create-insights',
    checkAuth(Role.ADMIN),
    InsightController.createInsight
);
route.get(
    '/get-single-insight/:id',
    checkAuth(Role.ADMIN, Role.MEMBER),
    InsightController.getSingleInsight
);



export const insightsRoutes = route;