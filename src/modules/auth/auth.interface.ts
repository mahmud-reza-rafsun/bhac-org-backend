import { Role } from "@prisma/client";

export interface IRequestUser {
    id: string;
    role: Role | string;
    email: string;
}

export interface ILoginUserPayload {
    email: string;
    password: string;
}

export interface IRegisterUserPayload {
    name: string;
    email: string;
    password: string;
    image: string;
}

export interface IChangePasswordPayload {
    currentPassword: string;
    newPassword: string;
}

export interface IUpdateUserPayload {
    name: string;
    username: string;
    coverPhoto: string;
    countryName: string;
    locationState: string;
    shortBio: string;
}