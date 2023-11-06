import type { Schema, Attribute } from '@strapi/strapi';

export interface FooterContact extends Schema.Component {
  collectionName: 'components_footer_contacts';
  info: {
    displayName: 'Contact';
  };
  attributes: {
    title: Attribute.String & Attribute.Required;
    address: Attribute.RichText & Attribute.Required;
  };
}

export interface SectionFacts extends Schema.Component {
  collectionName: 'components_section_facts';
  info: {
    displayName: 'Facts';
  };
  attributes: {
    fact_code: Attribute.String;
    fact_text: Attribute.RichText;
  };
}

export interface SectionHeading extends Schema.Component {
  collectionName: 'components_section_headings';
  info: {
    displayName: 'Heading';
    description: '';
  };
  attributes: {
    section_heading: Attribute.String & Attribute.DefaultTo<'Project Facts'>;
  };
}

declare module '@strapi/types' {
  export module Shared {
    export interface Components {
      'footer.contact': FooterContact;
      'section.facts': SectionFacts;
      'section.heading': SectionHeading;
    }
  }
}
