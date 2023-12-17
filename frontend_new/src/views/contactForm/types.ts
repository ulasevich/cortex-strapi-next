import * as z from 'zod';

export const ContactFormSchema = z.object({
    user_name: z.string().min(1, { message: 'Required' }),
    user_email: z.string().email('Invalid email'),
    user_phone: z.string(),
    user_message: z.string().min(1, { message: 'Required' }).max(1000, { message: 'Too large message' }),
});

export type ContactFormProps = z.infer<typeof ContactFormSchema>;
