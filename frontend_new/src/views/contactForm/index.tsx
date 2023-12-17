'use client';

import React, { useState } from 'react';
import type { SubmitHandler } from 'react-hook-form';
import { useForm } from 'react-hook-form';
import { zodResolver } from '@hookform/resolvers/zod';
import type { ContactFormProps } from './types';
import { ContactFormSchema } from './types';
import { api } from './api';

export const ContactForm = () => {
    const [visibleSuccess, setVisibleSuccess] = useState(false);
    const [visibleError, setVisibleError] = useState(false);

    const {
        register,
        formState: { errors },
        handleSubmit,
    } = useForm<ContactFormProps>({
        resolver: zodResolver(ContactFormSchema),
    });

    const onSubmit: SubmitHandler<ContactFormProps> = async (values) => {
        setVisibleSuccess(false);
        try {
            await api.sendContactRequest(values);
            setVisibleSuccess(true);
        } catch (e) {
            setVisibleError(true);
        }
    };

    return (
        <div style={{ maxWidth: 400, margin: '0 auto' }}>
            <h2 className="text-3xl font-bold mb-3">Contact Form</h2>
            {visibleError && 'Error sending'}
            {visibleSuccess && 'Success!'}
            <form onSubmit={handleSubmit(onSubmit)}>
                {' '}
                {/* handleSubmit(onSubmit) /// (d) => console.log(d) */}
                <fieldset>
                    <input {...register('user_name')} placeholder="user_name" />
                    <p>{errors.user_name?.message && `${errors.user_name?.message}`}</p>
                </fieldset>
                <fieldset>
                    <input {...register('user_email')} placeholder="user_email" />
                    <p>{errors.user_email?.message && `${errors.user_email?.message}`}</p>
                </fieldset>
                <fieldset>
                    <input {...register('user_phone')} placeholder="user_phone" />
                    <p>{errors.user_phone?.message && `${errors.user_phone?.message}`}</p>
                </fieldset>
                <fieldset>
                    <textarea {...register('user_message')} placeholder="user_message" />
                    <p>{errors.user_message?.message && `${errors.user_message?.message}`}</p>
                </fieldset>
                <button type="submit">Send</button>
            </form>
        </div>
    );
};
