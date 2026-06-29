import { Router } from "express";
import { donationController } from "./donations.controller";

const route = Router();

route.get("/get-all-donations", donationController.getAllDonations);
route.post("/create-donation", donationController.createDonation);

export const DonationRoute = route;
