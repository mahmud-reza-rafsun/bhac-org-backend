import { Router } from "express";
import { notificationController } from "./notification.controller";

const route = Router();

route.get('/get-all-notification', notificationController.getAllNotification)

export const notificationRoute = route;