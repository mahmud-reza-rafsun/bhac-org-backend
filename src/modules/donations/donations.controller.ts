import { Request, Response } from "express";
import { catchAsync } from "../../shared/utils/catch-async";
import { sendResponse } from "../../shared/utils/send-response";
import status from "http-status";
import { donationService } from "./donations.service";

const createDonation = catchAsync(async (req: Request, res: Response) => {
    const payload = req.body;
    const result = await donationService.createDonation(payload);
    sendResponse(res, {
        status: status.OK,
        success: true,
        message: 'Create bkash donation successfully',
        data: result,
    });
});

const getAllDonations = catchAsync(async (req: Request, res: Response) => {
    const result = await donationService.getAllDonations();
    sendResponse(res, {
        status: status.OK,
        success: true,
        message: 'Get all bkash donations successfully',
        data: result,
    });
});


export const donationController = {
    createDonation,
    getAllDonations
}
