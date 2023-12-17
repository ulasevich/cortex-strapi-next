import { STRAPI_URL } from '@/constants/api';
import type { ContactFormProps } from './types';

const sendContactRequest = async (form: ContactFormProps) => {
    const formData = {
        data: form,
    };
    await fetch(`${STRAPI_URL}/contact-form-requests`, {
        method: 'POST',
        headers: {
            Accept: 'application/json',
            'Content-Type': 'application/json',
        },
        body: JSON.stringify(formData),
    });
};

export const api = {
    sendContactRequest,
};
