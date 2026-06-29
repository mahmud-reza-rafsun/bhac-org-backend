import { BkashDonation } from "../../interface/donation.interface"
import { prisma } from "../../lib/prisma"

const createDonation = async (payload: BkashDonation) => {
    console.log(payload)
    const result = await prisma.donation.create({
        data: {
            ...payload
        }
    })
    return result;
}

const getAllDonations = async () => {
    const result = await prisma.donation.findMany();
    return result;
}

export const donationService = {
    createDonation,
    getAllDonations
}
