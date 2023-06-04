import { FC } from "react";

const ContactForm: FC = () => {
    return (
        <div className="contact-form-wrapper">
            <form method="POST" action={""}>
                <div className="row form-elements">
                    <div className="col-12">
                        <fieldset className="field-text">
                            <input type="text" name="user_name" placeholder="Name *" />
                            <label className="placeholder"> Name * </label>
                        </fieldset>
                    </div>
                    <div className="col-md-6">
                        <fieldset className="field-text">
                            <input type="text" name="user_email" placeholder="E-mail *" />
                            <label className="placeholder"> E-mail * </label>
                        </fieldset>
                    </div>
                    <div className="col-md-6">
                        <fieldset className="field-text">
                            <input type="text" name="user_phone" placeholder="Phone" />
                            <label className="placeholder"> Phone </label>
                        </fieldset>
                    </div>
                    <div className="col-12">
                        <fieldset className="field-textarea">
                            <textarea name="user_message" placeholder="Message *"></textarea>
                            <label className="placeholder"> Message * </label>
                            <div className="field-textarea__border"></div>
                        </fieldset>
                    </div>
                    <div className="col-12">
                        <fieldset className="field-checkbox">
                            <label>
                                <input type="checkbox" name="user_consent" />
                                &nbsp;&nbsp;
                                <span>I agree to the <a href="#" target="_blank">Privacy Policy</a></span>
                            </label>
                        </fieldset>
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