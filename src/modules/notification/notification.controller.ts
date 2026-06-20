import { Request, Response } from "express";
import { catchAsync } from "../../shared/utils/catch-async";
import { notificationService } from "./notification.service";
import { sendResponse } from "../../shared/utils/send-response";
import status from "http-status";

const getAllNotification = catchAsync(
    async (req: Request, res: Response) => {
        const result = await notificationService.getAllNotification();
        sendResponse(res, {
            status: status.OK,
            success: true,
            message: "Retrive all notification successfully",
            data: result
        })
    }
);

export const notificationController = {
    getAllNotification
}