import { prisma } from "../../lib/prisma"

const getAllNotification = async () => {
    const result = await prisma.notification.findMany();
    return result;
}

export const notificationService = {
    getAllNotification
}