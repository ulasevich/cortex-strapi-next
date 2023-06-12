import { FC } from "react";
import { useState } from 'react';
import { useFormik } from 'formik';
import * as yup from 'yup';

const ContactForm: FC = () => {
    const [message, setMessage] = useState('');
    const [submitted, setSubmitted] = useState(false);

    const formik = useFormik({
        validateOnChange: false,
        validateOnBlur: false,
        initialValues: {
            user_name: '',
            user_email: '',
            user_message: '',
            user_consent: false,
        },
        onSubmit: (values, actions) => {
            setMessage('Form submitted');
            setSubmitted(true);
            console.log(values);
            console.log(actions);
        },
        validationSchema: yup.object({
            user_name: yup.string().trim().required('Name is required'),
            user_email: yup
                .string()
                .email('Must be a valid email')
                .required('Email is required'),
            user_message: yup.string().trim().required('Message is required'),
            user_consent: yup.bool().oneOf([true], 'You need to accept the terms and conditions')
        }),
    });

    return (
        <div className="contact-form-wrapper">
            <div hidden={!submitted} className="alert alert-primary" role="alert">
                {message}
            </div>
            
            <form onSubmit={formik.handleSubmit}>
                <div className="row form-elements">
                    <div className="col-12">
                        <fieldset className="field-text">
                            <input 
                                type="text" 
                                name="user_name" 
                                placeholder="Name *" 
                                value={formik.values.user_name}
                                onChange={formik.handleChange}
                                onBlur={formik.handleBlur}
                            />
                            <label className="placeholder"> Name * </label>
                        </fieldset>
                        {formik.errors.user_name && (
                            <div className="text-danger">{formik.errors.user_name}</div>
                        )}
                    </div>
                    <div className="col-md-6">
                        <fieldset className="field-text">
                            <input 
                                type="text" 
                                name="user_email" 
                                placeholder="E-mail *" 
                                value={formik.values.user_email}
                                onChange={formik.handleChange}
                                onBlur={formik.handleBlur}
                            />
                            <label className="placeholder"> E-mail * </label>
                        </fieldset>
                        {formik.errors.user_email && (
                            <div className="text-danger">{formik.errors.user_email}</div>
                        )}
                    </div>
                    <div className="col-md-6">
                        <fieldset className="field-text">
                            <input type="text" name="user_phone" placeholder="Phone" />
                            <label className="placeholder"> Phone </label>
                        </fieldset>
                    </div>
                    <div className="col-12 field-check">
                        <fieldset className="field-text">
                            <input type="text" name="user_company" placeholder="Company" />
                            <label className="placeholder"> Company </label>
                        </fieldset>
                    </div>
                    <div className="col-12">
                        <fieldset className="field-textarea">
                            <textarea 
                                name="user_message" 
                                placeholder="Message *"
                                value={formik.values.user_message}
                                onChange={formik.handleChange}
                                onBlur={formik.handleBlur}
                            />
                            <label className="placeholder"> Message * </label>
                            <div className="field-textarea__border"></div>
                        </fieldset>
                        {formik.errors.user_message && (
                            <div className="text-danger">{formik.errors.user_message}</div>
                        )}
                    </div>
                    <div className="col-12">
                        <fieldset className="field-checkbox">
                            <label>
                                <input type="checkbox" name="user_consent" />
                                &nbsp;&nbsp;
                                <span>I agree to the <a href="#" target="_blank">Privacy Policy</a></span>
                            </label>
                        </fieldset>
                        {formik.errors.user_consent && (
                            <div className="text-danger">{formik.errors.user_consent}</div>
                        )}
                    </div>
                    <div className="col-12 form-sumbit">
                        <button type="submit" className="btn-default">SEND</button>
                    </div>
                </div>
            </form>
        </div>
    )
}
export default ContactForm