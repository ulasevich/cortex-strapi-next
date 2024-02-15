PGDMP  5    $                 |            cortex_strapi    16.0    16.0 �   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                        0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16914    cortex_strapi    DATABASE     �   CREATE DATABASE cortex_strapi WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE cortex_strapi;
                postgres    false            �            1259    16915    admin_permissions    TABLE     g  CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    action character varying(255),
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    action_parameters jsonb
);
 %   DROP TABLE public.admin_permissions;
       public         heap    postgres    false            �            1259    16920    admin_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.admin_permissions_id_seq;
       public          postgres    false    215                       0    0    admin_permissions_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;
          public          postgres    false    216            �            1259    16921    admin_permissions_role_links    TABLE     �   CREATE TABLE public.admin_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);
 0   DROP TABLE public.admin_permissions_role_links;
       public         heap    postgres    false            �            1259    16924 #   admin_permissions_role_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.admin_permissions_role_links_id_seq;
       public          postgres    false    217                       0    0 #   admin_permissions_role_links_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.admin_permissions_role_links_id_seq OWNED BY public.admin_permissions_role_links.id;
          public          postgres    false    218            �            1259    16925    admin_roles    TABLE     ;  CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.admin_roles;
       public         heap    postgres    false            �            1259    16930    admin_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_roles_id_seq;
       public          postgres    false    219                       0    0    admin_roles_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;
          public          postgres    false    220            �            1259    16931    admin_users    TABLE     B  CREATE TABLE public.admin_users (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.admin_users;
       public         heap    postgres    false            �            1259    16936    admin_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_users_id_seq;
       public          postgres    false    221                       0    0    admin_users_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;
          public          postgres    false    222            �            1259    16937    admin_users_roles_links    TABLE     �   CREATE TABLE public.admin_users_roles_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_order double precision,
    user_order double precision
);
 +   DROP TABLE public.admin_users_roles_links;
       public         heap    postgres    false            �            1259    16940    admin_users_roles_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_users_roles_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.admin_users_roles_links_id_seq;
       public          postgres    false    223                       0    0    admin_users_roles_links_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.admin_users_roles_links_id_seq OWNED BY public.admin_users_roles_links.id;
          public          postgres    false    224            �            1259    16941    components_footer_contacts    TABLE     �   CREATE TABLE public.components_footer_contacts (
    id integer NOT NULL,
    title character varying(255),
    address text
);
 .   DROP TABLE public.components_footer_contacts;
       public         heap    postgres    false            �            1259    16946 !   components_footer_contacts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_footer_contacts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.components_footer_contacts_id_seq;
       public          postgres    false    225                       0    0 !   components_footer_contacts_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.components_footer_contacts_id_seq OWNED BY public.components_footer_contacts.id;
          public          postgres    false    226            �            1259    16947    components_section_facts    TABLE     �   CREATE TABLE public.components_section_facts (
    id integer NOT NULL,
    fact_code character varying(255),
    fact_text text
);
 ,   DROP TABLE public.components_section_facts;
       public         heap    postgres    false            �            1259    16952    components_section_facts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_section_facts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.components_section_facts_id_seq;
       public          postgres    false    227                       0    0    components_section_facts_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.components_section_facts_id_seq OWNED BY public.components_section_facts.id;
          public          postgres    false    228            �            1259    16953    components_section_headings    TABLE     y   CREATE TABLE public.components_section_headings (
    id integer NOT NULL,
    section_heading character varying(255)
);
 /   DROP TABLE public.components_section_headings;
       public         heap    postgres    false            �            1259    16956 "   components_section_headings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_section_headings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.components_section_headings_id_seq;
       public          postgres    false    229            	           0    0 "   components_section_headings_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.components_section_headings_id_seq OWNED BY public.components_section_headings.id;
          public          postgres    false    230            �            1259    16957    contact_form_requests    TABLE     �  CREATE TABLE public.contact_form_requests (
    id integer NOT NULL,
    user_name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    user_email character varying(255),
    user_phone character varying(255),
    user_message text
);
 )   DROP TABLE public.contact_form_requests;
       public         heap    postgres    false            �            1259    16962    contact_form_requests_id_seq    SEQUENCE     �   CREATE SEQUENCE public.contact_form_requests_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.contact_form_requests_id_seq;
       public          postgres    false    231            
           0    0    contact_form_requests_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.contact_form_requests_id_seq OWNED BY public.contact_form_requests.id;
          public          postgres    false    232            �            1259    16963 )   contact_form_requests_localizations_links    TABLE     �   CREATE TABLE public.contact_form_requests_localizations_links (
    id integer NOT NULL,
    contact_form_request_id integer,
    inv_contact_form_request_id integer,
    contact_form_request_order double precision
);
 =   DROP TABLE public.contact_form_requests_localizations_links;
       public         heap    postgres    false            �            1259    16966 0   contact_form_requests_localizations_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.contact_form_requests_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 G   DROP SEQUENCE public.contact_form_requests_localizations_links_id_seq;
       public          postgres    false    233                       0    0 0   contact_form_requests_localizations_links_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.contact_form_requests_localizations_links_id_seq OWNED BY public.contact_form_requests_localizations_links.id;
          public          postgres    false    234            �            1259    16967    files    TABLE     �  CREATE TABLE public.files (
    id integer NOT NULL,
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    folder_path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.files;
       public         heap    postgres    false            �            1259    16972    files_folder_links    TABLE     �   CREATE TABLE public.files_folder_links (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_order double precision
);
 &   DROP TABLE public.files_folder_links;
       public         heap    postgres    false            �            1259    16975    files_folder_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_folder_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.files_folder_links_id_seq;
       public          postgres    false    236                       0    0    files_folder_links_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.files_folder_links_id_seq OWNED BY public.files_folder_links.id;
          public          postgres    false    237            �            1259    16976    files_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.files_id_seq;
       public          postgres    false    235                       0    0    files_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;
          public          postgres    false    238            �            1259    16977    files_related_morphs    TABLE     �   CREATE TABLE public.files_related_morphs (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);
 (   DROP TABLE public.files_related_morphs;
       public         heap    postgres    false            �            1259    16982    files_related_morphs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_related_morphs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.files_related_morphs_id_seq;
       public          postgres    false    239                       0    0    files_related_morphs_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.files_related_morphs_id_seq OWNED BY public.files_related_morphs.id;
          public          postgres    false    240            �            1259    16983    footers    TABLE     D  CREATE TABLE public.footers (
    id integer NOT NULL,
    title text,
    subtitle text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
    DROP TABLE public.footers;
       public         heap    postgres    false            �            1259    16988    footers_components    TABLE     �   CREATE TABLE public.footers_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);
 &   DROP TABLE public.footers_components;
       public         heap    postgres    false            �            1259    16993    footers_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.footers_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.footers_components_id_seq;
       public          postgres    false    242                       0    0    footers_components_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.footers_components_id_seq OWNED BY public.footers_components.id;
          public          postgres    false    243            �            1259    16994    footers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.footers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.footers_id_seq;
       public          postgres    false    241                       0    0    footers_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.footers_id_seq OWNED BY public.footers.id;
          public          postgres    false    244            �            1259    16995    footers_localizations_links    TABLE     �   CREATE TABLE public.footers_localizations_links (
    id integer NOT NULL,
    footer_id integer,
    inv_footer_id integer,
    footer_order double precision
);
 /   DROP TABLE public.footers_localizations_links;
       public         heap    postgres    false            �            1259    16998 "   footers_localizations_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.footers_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.footers_localizations_links_id_seq;
       public          postgres    false    245                       0    0 "   footers_localizations_links_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.footers_localizations_links_id_seq OWNED BY public.footers_localizations_links.id;
          public          postgres    false    246            �            1259    16999    i18n_locale    TABLE       CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.i18n_locale;
       public         heap    postgres    false            �            1259    17004    i18n_locale_id_seq    SEQUENCE     �   CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.i18n_locale_id_seq;
       public          postgres    false    247                       0    0    i18n_locale_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;
          public          postgres    false    248            �            1259    17005 
   main_pages    TABLE     J  CREATE TABLE public.main_pages (
    id integer NOT NULL,
    title text,
    detail_text text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
    DROP TABLE public.main_pages;
       public         heap    postgres    false            �            1259    17010    main_pages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.main_pages_id_seq;
       public          postgres    false    249                       0    0    main_pages_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.main_pages_id_seq OWNED BY public.main_pages.id;
          public          postgres    false    250            �            1259    17011    main_pages_localizations_links    TABLE     �   CREATE TABLE public.main_pages_localizations_links (
    id integer NOT NULL,
    main_page_id integer,
    inv_main_page_id integer,
    main_page_order double precision
);
 2   DROP TABLE public.main_pages_localizations_links;
       public         heap    postgres    false            �            1259    17014 %   main_pages_localizations_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_pages_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.main_pages_localizations_links_id_seq;
       public          postgres    false    251                       0    0 %   main_pages_localizations_links_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.main_pages_localizations_links_id_seq OWNED BY public.main_pages_localizations_links.id;
          public          postgres    false    252            �            1259    17015    our_services    TABLE     p  CREATE TABLE public.our_services (
    id integer NOT NULL,
    name character varying(255),
    preview_text text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    sort integer,
    locale character varying(255)
);
     DROP TABLE public.our_services;
       public         heap    postgres    false            �            1259    17020    our_services_id_seq    SEQUENCE     �   CREATE SEQUENCE public.our_services_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.our_services_id_seq;
       public          postgres    false    253                       0    0    our_services_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.our_services_id_seq OWNED BY public.our_services.id;
          public          postgres    false    254            �            1259    17021     our_services_localizations_links    TABLE     �   CREATE TABLE public.our_services_localizations_links (
    id integer NOT NULL,
    our_service_id integer,
    inv_our_service_id integer,
    our_service_order double precision
);
 4   DROP TABLE public.our_services_localizations_links;
       public         heap    postgres    false                        1259    17024 '   our_services_localizations_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.our_services_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.our_services_localizations_links_id_seq;
       public          postgres    false    255                       0    0 '   our_services_localizations_links_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.our_services_localizations_links_id_seq OWNED BY public.our_services_localizations_links.id;
          public          postgres    false    256                       1259    17025    projects    TABLE     �  CREATE TABLE public.projects (
    id integer NOT NULL,
    name character varying(255),
    preview_text text,
    detail_text text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    sort integer,
    code character varying(255)
);
    DROP TABLE public.projects;
       public         heap    postgres    false                       1259    17030    projects_components    TABLE     �   CREATE TABLE public.projects_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);
 '   DROP TABLE public.projects_components;
       public         heap    postgres    false                       1259    17035    projects_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.projects_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.projects_components_id_seq;
       public          postgres    false    258                       0    0    projects_components_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.projects_components_id_seq OWNED BY public.projects_components.id;
          public          postgres    false    259                       1259    17036    projects_id_seq    SEQUENCE     �   CREATE SEQUENCE public.projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.projects_id_seq;
       public          postgres    false    257                       0    0    projects_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.projects_id_seq OWNED BY public.projects.id;
          public          postgres    false    260                       1259    17037    projects_localizations_links    TABLE     �   CREATE TABLE public.projects_localizations_links (
    id integer NOT NULL,
    project_id integer,
    inv_project_id integer,
    project_order double precision
);
 0   DROP TABLE public.projects_localizations_links;
       public         heap    postgres    false                       1259    17040 #   projects_localizations_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.projects_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.projects_localizations_links_id_seq;
       public          postgres    false    261                       0    0 #   projects_localizations_links_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.projects_localizations_links_id_seq OWNED BY public.projects_localizations_links.id;
          public          postgres    false    262                       1259    17041    strapi_api_token_permissions    TABLE       CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 0   DROP TABLE public.strapi_api_token_permissions;
       public         heap    postgres    false                       1259    17044 #   strapi_api_token_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.strapi_api_token_permissions_id_seq;
       public          postgres    false    263                       0    0 #   strapi_api_token_permissions_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;
          public          postgres    false    264            	           1259    17045 (   strapi_api_token_permissions_token_links    TABLE     �   CREATE TABLE public.strapi_api_token_permissions_token_links (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_order double precision
);
 <   DROP TABLE public.strapi_api_token_permissions_token_links;
       public         heap    postgres    false            
           1259    17048 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public.strapi_api_token_permissions_token_links_id_seq;
       public          postgres    false    265                       0    0 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.strapi_api_token_permissions_token_links_id_seq OWNED BY public.strapi_api_token_permissions_token_links.id;
          public          postgres    false    266                       1259    17049    strapi_api_tokens    TABLE     �  CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 %   DROP TABLE public.strapi_api_tokens;
       public         heap    postgres    false                       1259    17054    strapi_api_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_api_tokens_id_seq;
       public          postgres    false    267                       0    0    strapi_api_tokens_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;
          public          postgres    false    268                       1259    17055    strapi_core_store_settings    TABLE     �   CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);
 .   DROP TABLE public.strapi_core_store_settings;
       public         heap    postgres    false                       1259    17060 !   strapi_core_store_settings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.strapi_core_store_settings_id_seq;
       public          postgres    false    269                       0    0 !   strapi_core_store_settings_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;
          public          postgres    false    270                       1259    17061    strapi_database_schema    TABLE     �   CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);
 *   DROP TABLE public.strapi_database_schema;
       public         heap    postgres    false                       1259    17066    strapi_database_schema_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_database_schema_id_seq;
       public          postgres    false    271                       0    0    strapi_database_schema_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;
          public          postgres    false    272                       1259    17067    strapi_migrations    TABLE     �   CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);
 %   DROP TABLE public.strapi_migrations;
       public         heap    postgres    false                       1259    17070    strapi_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_migrations_id_seq;
       public          postgres    false    273                       0    0    strapi_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;
          public          postgres    false    274                       1259    17071 !   strapi_transfer_token_permissions    TABLE     
  CREATE TABLE public.strapi_transfer_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 5   DROP TABLE public.strapi_transfer_token_permissions;
       public         heap    postgres    false                       1259    17074 (   strapi_transfer_token_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.strapi_transfer_token_permissions_id_seq;
       public          postgres    false    275                        0    0 (   strapi_transfer_token_permissions_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;
          public          postgres    false    276                       1259    17075 -   strapi_transfer_token_permissions_token_links    TABLE     �   CREATE TABLE public.strapi_transfer_token_permissions_token_links (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_order double precision
);
 A   DROP TABLE public.strapi_transfer_token_permissions_token_links;
       public         heap    postgres    false                       1259    17078 4   strapi_transfer_token_permissions_token_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 K   DROP SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq;
       public          postgres    false    277            !           0    0 4   strapi_transfer_token_permissions_token_links_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq OWNED BY public.strapi_transfer_token_permissions_token_links.id;
          public          postgres    false    278                       1259    17079    strapi_transfer_tokens    TABLE     �  CREATE TABLE public.strapi_transfer_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 *   DROP TABLE public.strapi_transfer_tokens;
       public         heap    postgres    false                       1259    17084    strapi_transfer_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_transfer_tokens_id_seq;
       public          postgres    false    279            "           0    0    strapi_transfer_tokens_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;
          public          postgres    false    280                       1259    17085    strapi_webhooks    TABLE     �   CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);
 #   DROP TABLE public.strapi_webhooks;
       public         heap    postgres    false                       1259    17090    strapi_webhooks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.strapi_webhooks_id_seq;
       public          postgres    false    281            #           0    0    strapi_webhooks_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;
          public          postgres    false    282                       1259    17091    up_permissions    TABLE     �   CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 "   DROP TABLE public.up_permissions;
       public         heap    postgres    false                       1259    17094    up_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.up_permissions_id_seq;
       public          postgres    false    283            $           0    0    up_permissions_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;
          public          postgres    false    284                       1259    17095    up_permissions_role_links    TABLE     �   CREATE TABLE public.up_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);
 -   DROP TABLE public.up_permissions_role_links;
       public         heap    postgres    false                       1259    17098     up_permissions_role_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.up_permissions_role_links_id_seq;
       public          postgres    false    285            %           0    0     up_permissions_role_links_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.up_permissions_role_links_id_seq OWNED BY public.up_permissions_role_links.id;
          public          postgres    false    286                       1259    17099    up_roles    TABLE     8  CREATE TABLE public.up_roles (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.up_roles;
       public         heap    postgres    false                        1259    17104    up_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.up_roles_id_seq;
       public          postgres    false    287            &           0    0    up_roles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;
          public          postgres    false    288            !           1259    17105    up_users    TABLE     �  CREATE TABLE public.up_users (
    id integer NOT NULL,
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.up_users;
       public         heap    postgres    false            "           1259    17110    up_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.up_users_id_seq;
       public          postgres    false    289            '           0    0    up_users_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;
          public          postgres    false    290            #           1259    17111    up_users_role_links    TABLE     �   CREATE TABLE public.up_users_role_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_order double precision
);
 '   DROP TABLE public.up_users_role_links;
       public         heap    postgres    false            $           1259    17114    up_users_role_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_users_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.up_users_role_links_id_seq;
       public          postgres    false    291            (           0    0    up_users_role_links_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.up_users_role_links_id_seq OWNED BY public.up_users_role_links.id;
          public          postgres    false    292            %           1259    17115    upload_folders    TABLE     +  CREATE TABLE public.upload_folders (
    id integer NOT NULL,
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 "   DROP TABLE public.upload_folders;
       public         heap    postgres    false            &           1259    17120    upload_folders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.upload_folders_id_seq;
       public          postgres    false    293            )           0    0    upload_folders_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;
          public          postgres    false    294            '           1259    17121    upload_folders_parent_links    TABLE     �   CREATE TABLE public.upload_folders_parent_links (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_order double precision
);
 /   DROP TABLE public.upload_folders_parent_links;
       public         heap    postgres    false            (           1259    17124 "   upload_folders_parent_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_folders_parent_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.upload_folders_parent_links_id_seq;
       public          postgres    false    295            *           0    0 "   upload_folders_parent_links_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.upload_folders_parent_links_id_seq OWNED BY public.upload_folders_parent_links.id;
          public          postgres    false    296            �           2604    17125    admin_permissions id    DEFAULT     |   ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);
 C   ALTER TABLE public.admin_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215            �           2604    17126    admin_permissions_role_links id    DEFAULT     �   ALTER TABLE ONLY public.admin_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_links_id_seq'::regclass);
 N   ALTER TABLE public.admin_permissions_role_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217            �           2604    17127    admin_roles id    DEFAULT     p   ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);
 =   ALTER TABLE public.admin_roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219            �           2604    17128    admin_users id    DEFAULT     p   ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);
 =   ALTER TABLE public.admin_users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221            �           2604    17129    admin_users_roles_links id    DEFAULT     �   ALTER TABLE ONLY public.admin_users_roles_links ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_links_id_seq'::regclass);
 I   ALTER TABLE public.admin_users_roles_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223            �           2604    17130    components_footer_contacts id    DEFAULT     �   ALTER TABLE ONLY public.components_footer_contacts ALTER COLUMN id SET DEFAULT nextval('public.components_footer_contacts_id_seq'::regclass);
 L   ALTER TABLE public.components_footer_contacts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225            �           2604    17131    components_section_facts id    DEFAULT     �   ALTER TABLE ONLY public.components_section_facts ALTER COLUMN id SET DEFAULT nextval('public.components_section_facts_id_seq'::regclass);
 J   ALTER TABLE public.components_section_facts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227            �           2604    17132    components_section_headings id    DEFAULT     �   ALTER TABLE ONLY public.components_section_headings ALTER COLUMN id SET DEFAULT nextval('public.components_section_headings_id_seq'::regclass);
 M   ALTER TABLE public.components_section_headings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229            �           2604    17133    contact_form_requests id    DEFAULT     �   ALTER TABLE ONLY public.contact_form_requests ALTER COLUMN id SET DEFAULT nextval('public.contact_form_requests_id_seq'::regclass);
 G   ALTER TABLE public.contact_form_requests ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231            �           2604    17134 ,   contact_form_requests_localizations_links id    DEFAULT     �   ALTER TABLE ONLY public.contact_form_requests_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.contact_form_requests_localizations_links_id_seq'::regclass);
 [   ALTER TABLE public.contact_form_requests_localizations_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233            �           2604    17135    files id    DEFAULT     d   ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);
 7   ALTER TABLE public.files ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    235            �           2604    17136    files_folder_links id    DEFAULT     ~   ALTER TABLE ONLY public.files_folder_links ALTER COLUMN id SET DEFAULT nextval('public.files_folder_links_id_seq'::regclass);
 D   ALTER TABLE public.files_folder_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236            �           2604    17137    files_related_morphs id    DEFAULT     �   ALTER TABLE ONLY public.files_related_morphs ALTER COLUMN id SET DEFAULT nextval('public.files_related_morphs_id_seq'::regclass);
 F   ALTER TABLE public.files_related_morphs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239            �           2604    17138 
   footers id    DEFAULT     h   ALTER TABLE ONLY public.footers ALTER COLUMN id SET DEFAULT nextval('public.footers_id_seq'::regclass);
 9   ALTER TABLE public.footers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    241            �           2604    17139    footers_components id    DEFAULT     ~   ALTER TABLE ONLY public.footers_components ALTER COLUMN id SET DEFAULT nextval('public.footers_components_id_seq'::regclass);
 D   ALTER TABLE public.footers_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    242            �           2604    17140    footers_localizations_links id    DEFAULT     �   ALTER TABLE ONLY public.footers_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.footers_localizations_links_id_seq'::regclass);
 M   ALTER TABLE public.footers_localizations_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    245            �           2604    17141    i18n_locale id    DEFAULT     p   ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);
 =   ALTER TABLE public.i18n_locale ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    248    247            �           2604    17142    main_pages id    DEFAULT     n   ALTER TABLE ONLY public.main_pages ALTER COLUMN id SET DEFAULT nextval('public.main_pages_id_seq'::regclass);
 <   ALTER TABLE public.main_pages ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    250    249            �           2604    17143 !   main_pages_localizations_links id    DEFAULT     �   ALTER TABLE ONLY public.main_pages_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.main_pages_localizations_links_id_seq'::regclass);
 P   ALTER TABLE public.main_pages_localizations_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    252    251            �           2604    17144    our_services id    DEFAULT     r   ALTER TABLE ONLY public.our_services ALTER COLUMN id SET DEFAULT nextval('public.our_services_id_seq'::regclass);
 >   ALTER TABLE public.our_services ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    254    253            �           2604    17145 #   our_services_localizations_links id    DEFAULT     �   ALTER TABLE ONLY public.our_services_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.our_services_localizations_links_id_seq'::regclass);
 R   ALTER TABLE public.our_services_localizations_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    256    255            �           2604    17146    projects id    DEFAULT     j   ALTER TABLE ONLY public.projects ALTER COLUMN id SET DEFAULT nextval('public.projects_id_seq'::regclass);
 :   ALTER TABLE public.projects ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    260    257            �           2604    17147    projects_components id    DEFAULT     �   ALTER TABLE ONLY public.projects_components ALTER COLUMN id SET DEFAULT nextval('public.projects_components_id_seq'::regclass);
 E   ALTER TABLE public.projects_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    259    258            �           2604    17148    projects_localizations_links id    DEFAULT     �   ALTER TABLE ONLY public.projects_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.projects_localizations_links_id_seq'::regclass);
 N   ALTER TABLE public.projects_localizations_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    262    261            �           2604    17149    strapi_api_token_permissions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);
 N   ALTER TABLE public.strapi_api_token_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    264    263            �           2604    17150 +   strapi_api_token_permissions_token_links id    DEFAULT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_links_id_seq'::regclass);
 Z   ALTER TABLE public.strapi_api_token_permissions_token_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    266    265            �           2604    17151    strapi_api_tokens id    DEFAULT     |   ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);
 C   ALTER TABLE public.strapi_api_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    268    267            �           2604    17152    strapi_core_store_settings id    DEFAULT     �   ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);
 L   ALTER TABLE public.strapi_core_store_settings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    270    269            �           2604    17153    strapi_database_schema id    DEFAULT     �   ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);
 H   ALTER TABLE public.strapi_database_schema ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    272    271            �           2604    17154    strapi_migrations id    DEFAULT     |   ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);
 C   ALTER TABLE public.strapi_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    274    273                        2604    17155 $   strapi_transfer_token_permissions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);
 S   ALTER TABLE public.strapi_transfer_token_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    276    275                       2604    17156 0   strapi_transfer_token_permissions_token_links id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_links_id_seq'::regclass);
 _   ALTER TABLE public.strapi_transfer_token_permissions_token_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    278    277                       2604    17157    strapi_transfer_tokens id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);
 H   ALTER TABLE public.strapi_transfer_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    280    279                       2604    17158    strapi_webhooks id    DEFAULT     x   ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);
 A   ALTER TABLE public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    282    281                       2604    17159    up_permissions id    DEFAULT     v   ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);
 @   ALTER TABLE public.up_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    284    283                       2604    17160    up_permissions_role_links id    DEFAULT     �   ALTER TABLE ONLY public.up_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_links_id_seq'::regclass);
 K   ALTER TABLE public.up_permissions_role_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    286    285                       2604    17161    up_roles id    DEFAULT     j   ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);
 :   ALTER TABLE public.up_roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    288    287                       2604    17162    up_users id    DEFAULT     j   ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);
 :   ALTER TABLE public.up_users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    290    289                       2604    17163    up_users_role_links id    DEFAULT     �   ALTER TABLE ONLY public.up_users_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_links_id_seq'::regclass);
 E   ALTER TABLE public.up_users_role_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    292    291            	           2604    17164    upload_folders id    DEFAULT     v   ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);
 @   ALTER TABLE public.upload_folders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    294    293            
           2604    17165    upload_folders_parent_links id    DEFAULT     �   ALTER TABLE ONLY public.upload_folders_parent_links ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_links_id_seq'::regclass);
 M   ALTER TABLE public.upload_folders_parent_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    296    295            �          0    16915    admin_permissions 
   TABLE DATA           �   COPY public.admin_permissions (id, action, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id, action_parameters) FROM stdin;
    public          postgres    false    215   ��      �          0    16921    admin_permissions_role_links 
   TABLE DATA           d   COPY public.admin_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
    public          postgres    false    217   ��      �          0    16925    admin_roles 
   TABLE DATA           x   COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    219   ��      �          0    16931    admin_users 
   TABLE DATA           �   COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    221   ��      �          0    16937    admin_users_roles_links 
   TABLE DATA           _   COPY public.admin_users_roles_links (id, user_id, role_id, role_order, user_order) FROM stdin;
    public          postgres    false    223   7�      �          0    16941    components_footer_contacts 
   TABLE DATA           H   COPY public.components_footer_contacts (id, title, address) FROM stdin;
    public          postgres    false    225   Y�      �          0    16947    components_section_facts 
   TABLE DATA           L   COPY public.components_section_facts (id, fact_code, fact_text) FROM stdin;
    public          postgres    false    227   ��      �          0    16953    components_section_headings 
   TABLE DATA           J   COPY public.components_section_headings (id, section_heading) FROM stdin;
    public          postgres    false    229   u�      �          0    16957    contact_form_requests 
   TABLE DATA           �   COPY public.contact_form_requests (id, user_name, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, user_email, user_phone, user_message) FROM stdin;
    public          postgres    false    231   ��      �          0    16963 )   contact_form_requests_localizations_links 
   TABLE DATA           �   COPY public.contact_form_requests_localizations_links (id, contact_form_request_id, inv_contact_form_request_id, contact_form_request_order) FROM stdin;
    public          postgres    false    233   }�      �          0    16967    files 
   TABLE DATA           �   COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    235   ��      �          0    16972    files_folder_links 
   TABLE DATA           P   COPY public.files_folder_links (id, file_id, folder_id, file_order) FROM stdin;
    public          postgres    false    236   ��      �          0    16977    files_related_morphs 
   TABLE DATA           e   COPY public.files_related_morphs (id, file_id, related_id, related_type, field, "order") FROM stdin;
    public          postgres    false    239   �      �          0    16983    footers 
   TABLE DATA           �   COPY public.footers (id, title, subtitle, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public          postgres    false    241   c�      �          0    16988    footers_components 
   TABLE DATA           i   COPY public.footers_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          postgres    false    242   O�      �          0    16995    footers_localizations_links 
   TABLE DATA           a   COPY public.footers_localizations_links (id, footer_id, inv_footer_id, footer_order) FROM stdin;
    public          postgres    false    245   ��      �          0    16999    i18n_locale 
   TABLE DATA           k   COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    247         �          0    17005 
   main_pages 
   TABLE DATA           �   COPY public.main_pages (id, title, detail_text, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public          postgres    false    249   A�      �          0    17011    main_pages_localizations_links 
   TABLE DATA           m   COPY public.main_pages_localizations_links (id, main_page_id, inv_main_page_id, main_page_order) FROM stdin;
    public          postgres    false    251   4�      �          0    17015    our_services 
   TABLE DATA           �   COPY public.our_services (id, name, preview_text, created_at, updated_at, published_at, created_by_id, updated_by_id, sort, locale) FROM stdin;
    public          postgres    false    253   ^�      �          0    17021     our_services_localizations_links 
   TABLE DATA           u   COPY public.our_services_localizations_links (id, our_service_id, inv_our_service_id, our_service_order) FROM stdin;
    public          postgres    false    255   q�      �          0    17025    projects 
   TABLE DATA           �   COPY public.projects (id, name, preview_text, detail_text, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, sort, code) FROM stdin;
    public          postgres    false    257   ��      �          0    17030    projects_components 
   TABLE DATA           j   COPY public.projects_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          postgres    false    258   g�      �          0    17037    projects_localizations_links 
   TABLE DATA           e   COPY public.projects_localizations_links (id, project_id, inv_project_id, project_order) FROM stdin;
    public          postgres    false    261   ͮ      �          0    17041    strapi_api_token_permissions 
   TABLE DATA           x   COPY public.strapi_api_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    263   �      �          0    17045 (   strapi_api_token_permissions_token_links 
   TABLE DATA           �   COPY public.strapi_api_token_permissions_token_links (id, api_token_permission_id, api_token_id, api_token_permission_order) FROM stdin;
    public          postgres    false    265   #�      �          0    17049    strapi_api_tokens 
   TABLE DATA           �   COPY public.strapi_api_tokens (id, name, description, type, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    267   @�      �          0    17055    strapi_core_store_settings 
   TABLE DATA           \   COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
    public          postgres    false    269   ]�      �          0    17061    strapi_database_schema 
   TABLE DATA           J   COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
    public          postgres    false    271   �      �          0    17067    strapi_migrations 
   TABLE DATA           =   COPY public.strapi_migrations (id, name, "time") FROM stdin;
    public          postgres    false    273   �      �          0    17071 !   strapi_transfer_token_permissions 
   TABLE DATA           }   COPY public.strapi_transfer_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    275   7�      �          0    17075 -   strapi_transfer_token_permissions_token_links 
   TABLE DATA           �   COPY public.strapi_transfer_token_permissions_token_links (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_order) FROM stdin;
    public          postgres    false    277   T�      �          0    17079    strapi_transfer_tokens 
   TABLE DATA           �   COPY public.strapi_transfer_tokens (id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    279   q�      �          0    17085    strapi_webhooks 
   TABLE DATA           R   COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
    public          postgres    false    281   ��      �          0    17091    up_permissions 
   TABLE DATA           j   COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    283   ��      �          0    17095    up_permissions_role_links 
   TABLE DATA           a   COPY public.up_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
    public          postgres    false    285    �      �          0    17099    up_roles 
   TABLE DATA           u   COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    287   e�      �          0    17105    up_users 
   TABLE DATA           �   COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    289   ��      �          0    17111    up_users_role_links 
   TABLE DATA           O   COPY public.up_users_role_links (id, user_id, role_id, user_order) FROM stdin;
    public          postgres    false    291   �      �          0    17115    upload_folders 
   TABLE DATA           w   COPY public.upload_folders (id, name, path_id, path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    293   7�      �          0    17121    upload_folders_parent_links 
   TABLE DATA           a   COPY public.upload_folders_parent_links (id, folder_id, inv_folder_id, folder_order) FROM stdin;
    public          postgres    false    295   ��      +           0    0    admin_permissions_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.admin_permissions_id_seq', 326, true);
          public          postgres    false    216            ,           0    0 #   admin_permissions_role_links_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.admin_permissions_role_links_id_seq', 366, true);
          public          postgres    false    218            -           0    0    admin_roles_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);
          public          postgres    false    220            .           0    0    admin_users_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_users_id_seq', 1, true);
          public          postgres    false    222            /           0    0    admin_users_roles_links_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.admin_users_roles_links_id_seq', 1, true);
          public          postgres    false    224            0           0    0 !   components_footer_contacts_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.components_footer_contacts_id_seq', 3, true);
          public          postgres    false    226            1           0    0    components_section_facts_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.components_section_facts_id_seq', 6, true);
          public          postgres    false    228            2           0    0 "   components_section_headings_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.components_section_headings_id_seq', 4, true);
          public          postgres    false    230            3           0    0    contact_form_requests_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.contact_form_requests_id_seq', 11, true);
          public          postgres    false    232            4           0    0 0   contact_form_requests_localizations_links_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public.contact_form_requests_localizations_links_id_seq', 2, true);
          public          postgres    false    234            5           0    0    files_folder_links_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.files_folder_links_id_seq', 27, true);
          public          postgres    false    237            6           0    0    files_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.files_id_seq', 18, true);
          public          postgres    false    238            7           0    0    files_related_morphs_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.files_related_morphs_id_seq', 127, true);
          public          postgres    false    240            8           0    0    footers_components_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.footers_components_id_seq', 5, true);
          public          postgres    false    243            9           0    0    footers_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.footers_id_seq', 2, true);
          public          postgres    false    244            :           0    0 "   footers_localizations_links_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.footers_localizations_links_id_seq', 2, true);
          public          postgres    false    246            ;           0    0    i18n_locale_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.i18n_locale_id_seq', 3, true);
          public          postgres    false    248            <           0    0    main_pages_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.main_pages_id_seq', 3, true);
          public          postgres    false    250            =           0    0 %   main_pages_localizations_links_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.main_pages_localizations_links_id_seq', 4, true);
          public          postgres    false    252            >           0    0    our_services_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.our_services_id_seq', 9, true);
          public          postgres    false    254            ?           0    0 '   our_services_localizations_links_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.our_services_localizations_links_id_seq', 6, true);
          public          postgres    false    256            @           0    0    projects_components_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.projects_components_id_seq', 20, true);
          public          postgres    false    259            A           0    0    projects_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.projects_id_seq', 15, true);
          public          postgres    false    260            B           0    0 #   projects_localizations_links_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.projects_localizations_links_id_seq', 12, true);
          public          postgres    false    262            C           0    0 #   strapi_api_token_permissions_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);
          public          postgres    false    264            D           0    0 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_links_id_seq', 1, false);
          public          postgres    false    266            E           0    0    strapi_api_tokens_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, false);
          public          postgres    false    268            F           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 36, true);
          public          postgres    false    270            G           0    0    strapi_database_schema_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 63, true);
          public          postgres    false    272            H           0    0    strapi_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);
          public          postgres    false    274            I           0    0 (   strapi_transfer_token_permissions_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);
          public          postgres    false    276            J           0    0 4   strapi_transfer_token_permissions_token_links_id_seq    SEQUENCE SET     c   SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_links_id_seq', 1, false);
          public          postgres    false    278            K           0    0    strapi_transfer_tokens_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);
          public          postgres    false    280            L           0    0    strapi_webhooks_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);
          public          postgres    false    282            M           0    0    up_permissions_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.up_permissions_id_seq', 16, true);
          public          postgres    false    284            N           0    0     up_permissions_role_links_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.up_permissions_role_links_id_seq', 16, true);
          public          postgres    false    286            O           0    0    up_roles_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);
          public          postgres    false    288            P           0    0    up_users_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.up_users_id_seq', 1, false);
          public          postgres    false    290            Q           0    0    up_users_role_links_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.up_users_role_links_id_seq', 1, false);
          public          postgres    false    292            R           0    0    upload_folders_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.upload_folders_id_seq', 4, true);
          public          postgres    false    294            S           0    0 "   upload_folders_parent_links_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.upload_folders_parent_links_id_seq', 2, true);
          public          postgres    false    296                       2606    17169 (   admin_permissions admin_permissions_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_pkey;
       public            postgres    false    215                       2606    17171 >   admin_permissions_role_links admin_permissions_role_links_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_pkey;
       public            postgres    false    217                       2606    17173 @   admin_permissions_role_links admin_permissions_role_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_unique UNIQUE (permission_id, role_id);
 j   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_unique;
       public            postgres    false    217    217                       2606    17175    admin_roles admin_roles_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_pkey;
       public            postgres    false    219                       2606    17177    admin_users admin_users_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_pkey;
       public            postgres    false    221            #           2606    17179 4   admin_users_roles_links admin_users_roles_links_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_pkey;
       public            postgres    false    223            %           2606    17181 6   admin_users_roles_links admin_users_roles_links_unique 
   CONSTRAINT     }   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_unique UNIQUE (user_id, role_id);
 `   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_unique;
       public            postgres    false    223    223            '           2606    17183 :   components_footer_contacts components_footer_contacts_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.components_footer_contacts
    ADD CONSTRAINT components_footer_contacts_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.components_footer_contacts DROP CONSTRAINT components_footer_contacts_pkey;
       public            postgres    false    225            )           2606    17185 6   components_section_facts components_section_facts_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.components_section_facts
    ADD CONSTRAINT components_section_facts_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.components_section_facts DROP CONSTRAINT components_section_facts_pkey;
       public            postgres    false    227            +           2606    17187 <   components_section_headings components_section_headings_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.components_section_headings
    ADD CONSTRAINT components_section_headings_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.components_section_headings DROP CONSTRAINT components_section_headings_pkey;
       public            postgres    false    229            4           2606    17189 X   contact_form_requests_localizations_links contact_form_requests_localizations_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.contact_form_requests_localizations_links
    ADD CONSTRAINT contact_form_requests_localizations_links_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.contact_form_requests_localizations_links DROP CONSTRAINT contact_form_requests_localizations_links_pkey;
       public            postgres    false    233            6           2606    17191 Z   contact_form_requests_localizations_links contact_form_requests_localizations_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.contact_form_requests_localizations_links
    ADD CONSTRAINT contact_form_requests_localizations_links_unique UNIQUE (contact_form_request_id, inv_contact_form_request_id);
 �   ALTER TABLE ONLY public.contact_form_requests_localizations_links DROP CONSTRAINT contact_form_requests_localizations_links_unique;
       public            postgres    false    233    233            .           2606    17193 0   contact_form_requests contact_form_requests_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.contact_form_requests
    ADD CONSTRAINT contact_form_requests_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.contact_form_requests DROP CONSTRAINT contact_form_requests_pkey;
       public            postgres    false    231            E           2606    17195 *   files_folder_links files_folder_links_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_pkey;
       public            postgres    false    236            G           2606    17197 ,   files_folder_links files_folder_links_unique 
   CONSTRAINT     u   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_unique UNIQUE (file_id, folder_id);
 V   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_unique;
       public            postgres    false    236    236            9           2606    17199    files files_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.files DROP CONSTRAINT files_pkey;
       public            postgres    false    235            L           2606    17201 .   files_related_morphs files_related_morphs_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.files_related_morphs DROP CONSTRAINT files_related_morphs_pkey;
       public            postgres    false    239            S           2606    17203 *   footers_components footers_components_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.footers_components
    ADD CONSTRAINT footers_components_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.footers_components DROP CONSTRAINT footers_components_pkey;
       public            postgres    false    242            \           2606    17205 <   footers_localizations_links footers_localizations_links_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.footers_localizations_links
    ADD CONSTRAINT footers_localizations_links_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.footers_localizations_links DROP CONSTRAINT footers_localizations_links_pkey;
       public            postgres    false    245            ^           2606    17207 >   footers_localizations_links footers_localizations_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.footers_localizations_links
    ADD CONSTRAINT footers_localizations_links_unique UNIQUE (footer_id, inv_footer_id);
 h   ALTER TABLE ONLY public.footers_localizations_links DROP CONSTRAINT footers_localizations_links_unique;
       public            postgres    false    245    245            O           2606    17209    footers footers_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.footers
    ADD CONSTRAINT footers_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.footers DROP CONSTRAINT footers_pkey;
       public            postgres    false    241            W           2606    18218 !   footers_components footers_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.footers_components
    ADD CONSTRAINT footers_unique UNIQUE (entity_id, component_id, field, component_type);
 K   ALTER TABLE ONLY public.footers_components DROP CONSTRAINT footers_unique;
       public            postgres    false    242    242    242    242            a           2606    17213    i18n_locale i18n_locale_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_pkey;
       public            postgres    false    247            k           2606    17215 B   main_pages_localizations_links main_pages_localizations_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.main_pages_localizations_links
    ADD CONSTRAINT main_pages_localizations_links_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.main_pages_localizations_links DROP CONSTRAINT main_pages_localizations_links_pkey;
       public            postgres    false    251            m           2606    17217 D   main_pages_localizations_links main_pages_localizations_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.main_pages_localizations_links
    ADD CONSTRAINT main_pages_localizations_links_unique UNIQUE (main_page_id, inv_main_page_id);
 n   ALTER TABLE ONLY public.main_pages_localizations_links DROP CONSTRAINT main_pages_localizations_links_unique;
       public            postgres    false    251    251            e           2606    17219    main_pages main_pages_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.main_pages
    ADD CONSTRAINT main_pages_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.main_pages DROP CONSTRAINT main_pages_pkey;
       public            postgres    false    249            v           2606    17221 F   our_services_localizations_links our_services_localizations_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.our_services_localizations_links
    ADD CONSTRAINT our_services_localizations_links_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.our_services_localizations_links DROP CONSTRAINT our_services_localizations_links_pkey;
       public            postgres    false    255            x           2606    17223 H   our_services_localizations_links our_services_localizations_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.our_services_localizations_links
    ADD CONSTRAINT our_services_localizations_links_unique UNIQUE (our_service_id, inv_our_service_id);
 r   ALTER TABLE ONLY public.our_services_localizations_links DROP CONSTRAINT our_services_localizations_links_unique;
       public            postgres    false    255    255            p           2606    17225    our_services our_services_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.our_services
    ADD CONSTRAINT our_services_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.our_services DROP CONSTRAINT our_services_pkey;
       public            postgres    false    253                       2606    17227 ,   projects_components projects_components_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.projects_components
    ADD CONSTRAINT projects_components_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.projects_components DROP CONSTRAINT projects_components_pkey;
       public            postgres    false    258            �           2606    17229 >   projects_localizations_links projects_localizations_links_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.projects_localizations_links
    ADD CONSTRAINT projects_localizations_links_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.projects_localizations_links DROP CONSTRAINT projects_localizations_links_pkey;
       public            postgres    false    261            �           2606    17231 @   projects_localizations_links projects_localizations_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.projects_localizations_links
    ADD CONSTRAINT projects_localizations_links_unique UNIQUE (project_id, inv_project_id);
 j   ALTER TABLE ONLY public.projects_localizations_links DROP CONSTRAINT projects_localizations_links_unique;
       public            postgres    false    261    261            {           2606    17233    projects projects_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.projects DROP CONSTRAINT projects_pkey;
       public            postgres    false    257            �           2606    18220 #   projects_components projects_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.projects_components
    ADD CONSTRAINT projects_unique UNIQUE (entity_id, component_id, field, component_type);
 M   ALTER TABLE ONLY public.projects_components DROP CONSTRAINT projects_unique;
       public            postgres    false    258    258    258    258            �           2606    17237 >   strapi_api_token_permissions strapi_api_token_permissions_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_pkey;
       public            postgres    false    263            �           2606    17239 V   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_pkey;
       public            postgres    false    265            �           2606    17241 X   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_unique UNIQUE (api_token_permission_id, api_token_id);
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_unique;
       public            postgres    false    265    265            �           2606    17243 (   strapi_api_tokens strapi_api_tokens_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_pkey;
       public            postgres    false    267            �           2606    17245 :   strapi_core_store_settings strapi_core_store_settings_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.strapi_core_store_settings DROP CONSTRAINT strapi_core_store_settings_pkey;
       public            postgres    false    269            �           2606    17247 2   strapi_database_schema strapi_database_schema_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_database_schema DROP CONSTRAINT strapi_database_schema_pkey;
       public            postgres    false    271            �           2606    17249 (   strapi_migrations strapi_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_migrations DROP CONSTRAINT strapi_migrations_pkey;
       public            postgres    false    273            �           2606    17251 H   strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);
 r   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_pkey;
       public            postgres    false    275            �           2606    17253 `   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_pkey;
       public            postgres    false    277            �           2606    17255 b   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_unique UNIQUE (transfer_token_permission_id, transfer_token_id);
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_unique;
       public            postgres    false    277    277            �           2606    17257 2   strapi_transfer_tokens strapi_transfer_tokens_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_pkey;
       public            postgres    false    279            �           2606    17259 $   strapi_webhooks strapi_webhooks_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.strapi_webhooks DROP CONSTRAINT strapi_webhooks_pkey;
       public            postgres    false    281            �           2606    17261 "   up_permissions up_permissions_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_pkey;
       public            postgres    false    283            �           2606    17263 8   up_permissions_role_links up_permissions_role_links_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_pkey;
       public            postgres    false    285            �           2606    17265 :   up_permissions_role_links up_permissions_role_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_unique UNIQUE (permission_id, role_id);
 d   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_unique;
       public            postgres    false    285    285            �           2606    17267    up_roles up_roles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_pkey;
       public            postgres    false    287            �           2606    17269    up_users up_users_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_pkey;
       public            postgres    false    289            �           2606    17271 ,   up_users_role_links up_users_role_links_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_pkey;
       public            postgres    false    291            �           2606    17273 .   up_users_role_links up_users_role_links_unique 
   CONSTRAINT     u   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_unique UNIQUE (user_id, role_id);
 X   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_unique;
       public            postgres    false    291    291            �           2606    17275 <   upload_folders_parent_links upload_folders_parent_links_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_pkey;
       public            postgres    false    295            �           2606    17277 >   upload_folders_parent_links upload_folders_parent_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_unique UNIQUE (folder_id, inv_folder_id);
 h   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_unique;
       public            postgres    false    295    295            �           2606    17279 +   upload_folders upload_folders_path_id_index 
   CONSTRAINT     i   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);
 U   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_path_id_index;
       public            postgres    false    293            �           2606    17281 (   upload_folders upload_folders_path_index 
   CONSTRAINT     c   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);
 R   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_path_index;
       public            postgres    false    293            �           2606    17283 "   upload_folders upload_folders_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_pkey;
       public            postgres    false    293                       1259    17284 "   admin_permissions_created_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);
 6   DROP INDEX public.admin_permissions_created_by_id_fk;
       public            postgres    false    215                       1259    17285    admin_permissions_role_links_fk    INDEX     q   CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);
 3   DROP INDEX public.admin_permissions_role_links_fk;
       public            postgres    false    217                       1259    17286 #   admin_permissions_role_links_inv_fk    INDEX     o   CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);
 7   DROP INDEX public.admin_permissions_role_links_inv_fk;
       public            postgres    false    217                       1259    17287 )   admin_permissions_role_links_order_inv_fk    INDEX     ~   CREATE INDEX admin_permissions_role_links_order_inv_fk ON public.admin_permissions_role_links USING btree (permission_order);
 =   DROP INDEX public.admin_permissions_role_links_order_inv_fk;
       public            postgres    false    217                       1259    17288 "   admin_permissions_updated_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);
 6   DROP INDEX public.admin_permissions_updated_by_id_fk;
       public            postgres    false    215                       1259    17289    admin_roles_created_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);
 0   DROP INDEX public.admin_roles_created_by_id_fk;
       public            postgres    false    219                       1259    17290    admin_roles_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);
 0   DROP INDEX public.admin_roles_updated_by_id_fk;
       public            postgres    false    219                       1259    17291    admin_users_created_by_id_fk    INDEX     ]   CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);
 0   DROP INDEX public.admin_users_created_by_id_fk;
       public            postgres    false    221                       1259    17292    admin_users_roles_links_fk    INDEX     a   CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);
 .   DROP INDEX public.admin_users_roles_links_fk;
       public            postgres    false    223                       1259    17293    admin_users_roles_links_inv_fk    INDEX     e   CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);
 2   DROP INDEX public.admin_users_roles_links_inv_fk;
       public            postgres    false    223                        1259    17294     admin_users_roles_links_order_fk    INDEX     j   CREATE INDEX admin_users_roles_links_order_fk ON public.admin_users_roles_links USING btree (role_order);
 4   DROP INDEX public.admin_users_roles_links_order_fk;
       public            postgres    false    223            !           1259    17295 $   admin_users_roles_links_order_inv_fk    INDEX     n   CREATE INDEX admin_users_roles_links_order_inv_fk ON public.admin_users_roles_links USING btree (user_order);
 8   DROP INDEX public.admin_users_roles_links_order_inv_fk;
       public            postgres    false    223                       1259    17296    admin_users_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);
 0   DROP INDEX public.admin_users_updated_by_id_fk;
       public            postgres    false    221            ,           1259    17297 &   contact_form_requests_created_by_id_fk    INDEX     q   CREATE INDEX contact_form_requests_created_by_id_fk ON public.contact_form_requests USING btree (created_by_id);
 :   DROP INDEX public.contact_form_requests_created_by_id_fk;
       public            postgres    false    231            0           1259    17298 ,   contact_form_requests_localizations_links_fk    INDEX     �   CREATE INDEX contact_form_requests_localizations_links_fk ON public.contact_form_requests_localizations_links USING btree (contact_form_request_id);
 @   DROP INDEX public.contact_form_requests_localizations_links_fk;
       public            postgres    false    233            1           1259    17299 0   contact_form_requests_localizations_links_inv_fk    INDEX     �   CREATE INDEX contact_form_requests_localizations_links_inv_fk ON public.contact_form_requests_localizations_links USING btree (inv_contact_form_request_id);
 D   DROP INDEX public.contact_form_requests_localizations_links_inv_fk;
       public            postgres    false    233            2           1259    17300 2   contact_form_requests_localizations_links_order_fk    INDEX     �   CREATE INDEX contact_form_requests_localizations_links_order_fk ON public.contact_form_requests_localizations_links USING btree (contact_form_request_order);
 F   DROP INDEX public.contact_form_requests_localizations_links_order_fk;
       public            postgres    false    233            /           1259    17301 &   contact_form_requests_updated_by_id_fk    INDEX     q   CREATE INDEX contact_form_requests_updated_by_id_fk ON public.contact_form_requests USING btree (updated_by_id);
 :   DROP INDEX public.contact_form_requests_updated_by_id_fk;
       public            postgres    false    231            7           1259    17302    files_created_by_id_fk    INDEX     Q   CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);
 *   DROP INDEX public.files_created_by_id_fk;
       public            postgres    false    235            A           1259    17303    files_folder_links_fk    INDEX     W   CREATE INDEX files_folder_links_fk ON public.files_folder_links USING btree (file_id);
 )   DROP INDEX public.files_folder_links_fk;
       public            postgres    false    236            B           1259    17304    files_folder_links_inv_fk    INDEX     ]   CREATE INDEX files_folder_links_inv_fk ON public.files_folder_links USING btree (folder_id);
 -   DROP INDEX public.files_folder_links_inv_fk;
       public            postgres    false    236            C           1259    17305    files_folder_links_order_inv_fk    INDEX     d   CREATE INDEX files_folder_links_order_inv_fk ON public.files_folder_links USING btree (file_order);
 3   DROP INDEX public.files_folder_links_order_inv_fk;
       public            postgres    false    236            H           1259    17306    files_related_morphs_fk    INDEX     [   CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);
 +   DROP INDEX public.files_related_morphs_fk;
       public            postgres    false    239            I           1259    17307 $   files_related_morphs_id_column_index    INDEX     k   CREATE INDEX files_related_morphs_id_column_index ON public.files_related_morphs USING btree (related_id);
 8   DROP INDEX public.files_related_morphs_id_column_index;
       public            postgres    false    239            J           1259    17308     files_related_morphs_order_index    INDEX     d   CREATE INDEX files_related_morphs_order_index ON public.files_related_morphs USING btree ("order");
 4   DROP INDEX public.files_related_morphs_order_index;
       public            postgres    false    239            :           1259    17309    files_updated_by_id_fk    INDEX     Q   CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);
 *   DROP INDEX public.files_updated_by_id_fk;
       public            postgres    false    235            Q           1259    17310    footers_component_type_index    INDEX     e   CREATE INDEX footers_component_type_index ON public.footers_components USING btree (component_type);
 0   DROP INDEX public.footers_component_type_index;
       public            postgres    false    242            M           1259    17311    footers_created_by_id_fk    INDEX     U   CREATE INDEX footers_created_by_id_fk ON public.footers USING btree (created_by_id);
 ,   DROP INDEX public.footers_created_by_id_fk;
       public            postgres    false    241            T           1259    17312    footers_entity_fk    INDEX     U   CREATE INDEX footers_entity_fk ON public.footers_components USING btree (entity_id);
 %   DROP INDEX public.footers_entity_fk;
       public            postgres    false    242            U           1259    17313    footers_field_index    INDEX     S   CREATE INDEX footers_field_index ON public.footers_components USING btree (field);
 '   DROP INDEX public.footers_field_index;
       public            postgres    false    242            X           1259    17314    footers_localizations_links_fk    INDEX     k   CREATE INDEX footers_localizations_links_fk ON public.footers_localizations_links USING btree (footer_id);
 2   DROP INDEX public.footers_localizations_links_fk;
       public            postgres    false    245            Y           1259    17315 "   footers_localizations_links_inv_fk    INDEX     s   CREATE INDEX footers_localizations_links_inv_fk ON public.footers_localizations_links USING btree (inv_footer_id);
 6   DROP INDEX public.footers_localizations_links_inv_fk;
       public            postgres    false    245            Z           1259    17316 $   footers_localizations_links_order_fk    INDEX     t   CREATE INDEX footers_localizations_links_order_fk ON public.footers_localizations_links USING btree (footer_order);
 8   DROP INDEX public.footers_localizations_links_order_fk;
       public            postgres    false    245            P           1259    17317    footers_updated_by_id_fk    INDEX     U   CREATE INDEX footers_updated_by_id_fk ON public.footers USING btree (updated_by_id);
 ,   DROP INDEX public.footers_updated_by_id_fk;
       public            postgres    false    241            _           1259    17318    i18n_locale_created_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);
 0   DROP INDEX public.i18n_locale_created_by_id_fk;
       public            postgres    false    247            b           1259    17319    i18n_locale_updated_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);
 0   DROP INDEX public.i18n_locale_updated_by_id_fk;
       public            postgres    false    247            c           1259    17320    main_pages_created_by_id_fk    INDEX     [   CREATE INDEX main_pages_created_by_id_fk ON public.main_pages USING btree (created_by_id);
 /   DROP INDEX public.main_pages_created_by_id_fk;
       public            postgres    false    249            g           1259    17321 !   main_pages_localizations_links_fk    INDEX     t   CREATE INDEX main_pages_localizations_links_fk ON public.main_pages_localizations_links USING btree (main_page_id);
 5   DROP INDEX public.main_pages_localizations_links_fk;
       public            postgres    false    251            h           1259    17322 %   main_pages_localizations_links_inv_fk    INDEX     |   CREATE INDEX main_pages_localizations_links_inv_fk ON public.main_pages_localizations_links USING btree (inv_main_page_id);
 9   DROP INDEX public.main_pages_localizations_links_inv_fk;
       public            postgres    false    251            i           1259    17323 '   main_pages_localizations_links_order_fk    INDEX     }   CREATE INDEX main_pages_localizations_links_order_fk ON public.main_pages_localizations_links USING btree (main_page_order);
 ;   DROP INDEX public.main_pages_localizations_links_order_fk;
       public            postgres    false    251            f           1259    17324    main_pages_updated_by_id_fk    INDEX     [   CREATE INDEX main_pages_updated_by_id_fk ON public.main_pages USING btree (updated_by_id);
 /   DROP INDEX public.main_pages_updated_by_id_fk;
       public            postgres    false    249            n           1259    17325    our_services_created_by_id_fk    INDEX     _   CREATE INDEX our_services_created_by_id_fk ON public.our_services USING btree (created_by_id);
 1   DROP INDEX public.our_services_created_by_id_fk;
       public            postgres    false    253            r           1259    17326 #   our_services_localizations_links_fk    INDEX     z   CREATE INDEX our_services_localizations_links_fk ON public.our_services_localizations_links USING btree (our_service_id);
 7   DROP INDEX public.our_services_localizations_links_fk;
       public            postgres    false    255            s           1259    17327 '   our_services_localizations_links_inv_fk    INDEX     �   CREATE INDEX our_services_localizations_links_inv_fk ON public.our_services_localizations_links USING btree (inv_our_service_id);
 ;   DROP INDEX public.our_services_localizations_links_inv_fk;
       public            postgres    false    255            t           1259    17328 )   our_services_localizations_links_order_fk    INDEX     �   CREATE INDEX our_services_localizations_links_order_fk ON public.our_services_localizations_links USING btree (our_service_order);
 =   DROP INDEX public.our_services_localizations_links_order_fk;
       public            postgres    false    255            q           1259    17329    our_services_updated_by_id_fk    INDEX     _   CREATE INDEX our_services_updated_by_id_fk ON public.our_services USING btree (updated_by_id);
 1   DROP INDEX public.our_services_updated_by_id_fk;
       public            postgres    false    253            }           1259    17330    projects_component_type_index    INDEX     g   CREATE INDEX projects_component_type_index ON public.projects_components USING btree (component_type);
 1   DROP INDEX public.projects_component_type_index;
       public            postgres    false    258            y           1259    17331    projects_created_by_id_fk    INDEX     W   CREATE INDEX projects_created_by_id_fk ON public.projects USING btree (created_by_id);
 -   DROP INDEX public.projects_created_by_id_fk;
       public            postgres    false    257            �           1259    17332    projects_entity_fk    INDEX     W   CREATE INDEX projects_entity_fk ON public.projects_components USING btree (entity_id);
 &   DROP INDEX public.projects_entity_fk;
       public            postgres    false    258            �           1259    17333    projects_field_index    INDEX     U   CREATE INDEX projects_field_index ON public.projects_components USING btree (field);
 (   DROP INDEX public.projects_field_index;
       public            postgres    false    258            �           1259    17334    projects_localizations_links_fk    INDEX     n   CREATE INDEX projects_localizations_links_fk ON public.projects_localizations_links USING btree (project_id);
 3   DROP INDEX public.projects_localizations_links_fk;
       public            postgres    false    261            �           1259    17335 #   projects_localizations_links_inv_fk    INDEX     v   CREATE INDEX projects_localizations_links_inv_fk ON public.projects_localizations_links USING btree (inv_project_id);
 7   DROP INDEX public.projects_localizations_links_inv_fk;
       public            postgres    false    261            �           1259    17336 %   projects_localizations_links_order_fk    INDEX     w   CREATE INDEX projects_localizations_links_order_fk ON public.projects_localizations_links USING btree (project_order);
 9   DROP INDEX public.projects_localizations_links_order_fk;
       public            postgres    false    261            |           1259    17337    projects_updated_by_id_fk    INDEX     W   CREATE INDEX projects_updated_by_id_fk ON public.projects USING btree (updated_by_id);
 -   DROP INDEX public.projects_updated_by_id_fk;
       public            postgres    false    257            �           1259    17338 -   strapi_api_token_permissions_created_by_id_fk    INDEX        CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);
 A   DROP INDEX public.strapi_api_token_permissions_created_by_id_fk;
       public            postgres    false    263            �           1259    17339 +   strapi_api_token_permissions_token_links_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_id);
 ?   DROP INDEX public.strapi_api_token_permissions_token_links_fk;
       public            postgres    false    265            �           1259    17340 /   strapi_api_token_permissions_token_links_inv_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_id);
 C   DROP INDEX public.strapi_api_token_permissions_token_links_inv_fk;
       public            postgres    false    265            �           1259    17341 5   strapi_api_token_permissions_token_links_order_inv_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_order_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_order);
 I   DROP INDEX public.strapi_api_token_permissions_token_links_order_inv_fk;
       public            postgres    false    265            �           1259    17342 -   strapi_api_token_permissions_updated_by_id_fk    INDEX        CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);
 A   DROP INDEX public.strapi_api_token_permissions_updated_by_id_fk;
       public            postgres    false    263            �           1259    17343 "   strapi_api_tokens_created_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);
 6   DROP INDEX public.strapi_api_tokens_created_by_id_fk;
       public            postgres    false    267            �           1259    17344 "   strapi_api_tokens_updated_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);
 6   DROP INDEX public.strapi_api_tokens_updated_by_id_fk;
       public            postgres    false    267            �           1259    17345 2   strapi_transfer_token_permissions_created_by_id_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);
 F   DROP INDEX public.strapi_transfer_token_permissions_created_by_id_fk;
       public            postgres    false    275            �           1259    17346 0   strapi_transfer_token_permissions_token_links_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_id);
 D   DROP INDEX public.strapi_transfer_token_permissions_token_links_fk;
       public            postgres    false    277            �           1259    17347 4   strapi_transfer_token_permissions_token_links_inv_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_id);
 H   DROP INDEX public.strapi_transfer_token_permissions_token_links_inv_fk;
       public            postgres    false    277            �           1259    17348 :   strapi_transfer_token_permissions_token_links_order_inv_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_order_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_order);
 N   DROP INDEX public.strapi_transfer_token_permissions_token_links_order_inv_fk;
       public            postgres    false    277            �           1259    17349 2   strapi_transfer_token_permissions_updated_by_id_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);
 F   DROP INDEX public.strapi_transfer_token_permissions_updated_by_id_fk;
       public            postgres    false    275            �           1259    17350 '   strapi_transfer_tokens_created_by_id_fk    INDEX     s   CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);
 ;   DROP INDEX public.strapi_transfer_tokens_created_by_id_fk;
       public            postgres    false    279            �           1259    17351 '   strapi_transfer_tokens_updated_by_id_fk    INDEX     s   CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);
 ;   DROP INDEX public.strapi_transfer_tokens_updated_by_id_fk;
       public            postgres    false    279            �           1259    17352    up_permissions_created_by_id_fk    INDEX     c   CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);
 3   DROP INDEX public.up_permissions_created_by_id_fk;
       public            postgres    false    283            �           1259    17353    up_permissions_role_links_fk    INDEX     k   CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);
 0   DROP INDEX public.up_permissions_role_links_fk;
       public            postgres    false    285            �           1259    17354     up_permissions_role_links_inv_fk    INDEX     i   CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);
 4   DROP INDEX public.up_permissions_role_links_inv_fk;
       public            postgres    false    285            �           1259    17355 &   up_permissions_role_links_order_inv_fk    INDEX     x   CREATE INDEX up_permissions_role_links_order_inv_fk ON public.up_permissions_role_links USING btree (permission_order);
 :   DROP INDEX public.up_permissions_role_links_order_inv_fk;
       public            postgres    false    285            �           1259    17356    up_permissions_updated_by_id_fk    INDEX     c   CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);
 3   DROP INDEX public.up_permissions_updated_by_id_fk;
       public            postgres    false    283            �           1259    17357    up_roles_created_by_id_fk    INDEX     W   CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);
 -   DROP INDEX public.up_roles_created_by_id_fk;
       public            postgres    false    287            �           1259    17358    up_roles_updated_by_id_fk    INDEX     W   CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);
 -   DROP INDEX public.up_roles_updated_by_id_fk;
       public            postgres    false    287            �           1259    17359    up_users_created_by_id_fk    INDEX     W   CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);
 -   DROP INDEX public.up_users_created_by_id_fk;
       public            postgres    false    289            �           1259    17360    up_users_role_links_fk    INDEX     Y   CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);
 *   DROP INDEX public.up_users_role_links_fk;
       public            postgres    false    291            �           1259    17361    up_users_role_links_inv_fk    INDEX     ]   CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);
 .   DROP INDEX public.up_users_role_links_inv_fk;
       public            postgres    false    291            �           1259    17362     up_users_role_links_order_inv_fk    INDEX     f   CREATE INDEX up_users_role_links_order_inv_fk ON public.up_users_role_links USING btree (user_order);
 4   DROP INDEX public.up_users_role_links_order_inv_fk;
       public            postgres    false    291            �           1259    17363    up_users_updated_by_id_fk    INDEX     W   CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);
 -   DROP INDEX public.up_users_updated_by_id_fk;
       public            postgres    false    289            ;           1259    17364    upload_files_created_at_index    INDEX     U   CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);
 1   DROP INDEX public.upload_files_created_at_index;
       public            postgres    false    235            <           1259    17365    upload_files_ext_index    INDEX     G   CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);
 *   DROP INDEX public.upload_files_ext_index;
       public            postgres    false    235            =           1259    17366    upload_files_folder_path_index    INDEX     W   CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);
 2   DROP INDEX public.upload_files_folder_path_index;
       public            postgres    false    235            >           1259    17367    upload_files_name_index    INDEX     I   CREATE INDEX upload_files_name_index ON public.files USING btree (name);
 +   DROP INDEX public.upload_files_name_index;
       public            postgres    false    235            ?           1259    17368    upload_files_size_index    INDEX     I   CREATE INDEX upload_files_size_index ON public.files USING btree (size);
 +   DROP INDEX public.upload_files_size_index;
       public            postgres    false    235            @           1259    17369    upload_files_updated_at_index    INDEX     U   CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);
 1   DROP INDEX public.upload_files_updated_at_index;
       public            postgres    false    235            �           1259    17370    upload_folders_created_by_id_fk    INDEX     c   CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);
 3   DROP INDEX public.upload_folders_created_by_id_fk;
       public            postgres    false    293            �           1259    17371    upload_folders_parent_links_fk    INDEX     k   CREATE INDEX upload_folders_parent_links_fk ON public.upload_folders_parent_links USING btree (folder_id);
 2   DROP INDEX public.upload_folders_parent_links_fk;
       public            postgres    false    295            �           1259    17372 "   upload_folders_parent_links_inv_fk    INDEX     s   CREATE INDEX upload_folders_parent_links_inv_fk ON public.upload_folders_parent_links USING btree (inv_folder_id);
 6   DROP INDEX public.upload_folders_parent_links_inv_fk;
       public            postgres    false    295            �           1259    17373 (   upload_folders_parent_links_order_inv_fk    INDEX     x   CREATE INDEX upload_folders_parent_links_order_inv_fk ON public.upload_folders_parent_links USING btree (folder_order);
 <   DROP INDEX public.upload_folders_parent_links_order_inv_fk;
       public            postgres    false    295            �           1259    17374    upload_folders_updated_by_id_fk    INDEX     c   CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);
 3   DROP INDEX public.upload_folders_updated_by_id_fk;
       public            postgres    false    293            �           2606    17375 4   admin_permissions admin_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_created_by_id_fk;
       public          postgres    false    4892    215    221            �           2606    17380 <   admin_permissions_role_links admin_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_fk;
       public          postgres    false    215    217    4877            �           2606    17385 @   admin_permissions_role_links admin_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_inv_fk;
       public          postgres    false    219    4888    217            �           2606    17390 4   admin_permissions admin_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_updated_by_id_fk;
       public          postgres    false    215    221    4892            �           2606    17395 (   admin_roles admin_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_created_by_id_fk;
       public          postgres    false    219    221    4892            �           2606    17400 (   admin_roles admin_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_updated_by_id_fk;
       public          postgres    false    4892    221    219            �           2606    17405 (   admin_users admin_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_created_by_id_fk;
       public          postgres    false    221    221    4892            �           2606    17410 2   admin_users_roles_links admin_users_roles_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_fk;
       public          postgres    false    221    4892    223            �           2606    17415 6   admin_users_roles_links admin_users_roles_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_inv_fk;
       public          postgres    false    219    4888    223            �           2606    17420 (   admin_users admin_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_updated_by_id_fk;
       public          postgres    false    221    4892    221            �           2606    17425 <   contact_form_requests contact_form_requests_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.contact_form_requests
    ADD CONSTRAINT contact_form_requests_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 f   ALTER TABLE ONLY public.contact_form_requests DROP CONSTRAINT contact_form_requests_created_by_id_fk;
       public          postgres    false    221    231    4892            �           2606    17430 V   contact_form_requests_localizations_links contact_form_requests_localizations_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.contact_form_requests_localizations_links
    ADD CONSTRAINT contact_form_requests_localizations_links_fk FOREIGN KEY (contact_form_request_id) REFERENCES public.contact_form_requests(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.contact_form_requests_localizations_links DROP CONSTRAINT contact_form_requests_localizations_links_fk;
       public          postgres    false    231    4910    233            �           2606    17435 Z   contact_form_requests_localizations_links contact_form_requests_localizations_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.contact_form_requests_localizations_links
    ADD CONSTRAINT contact_form_requests_localizations_links_inv_fk FOREIGN KEY (inv_contact_form_request_id) REFERENCES public.contact_form_requests(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.contact_form_requests_localizations_links DROP CONSTRAINT contact_form_requests_localizations_links_inv_fk;
       public          postgres    false    231    233    4910            �           2606    17440 <   contact_form_requests contact_form_requests_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.contact_form_requests
    ADD CONSTRAINT contact_form_requests_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 f   ALTER TABLE ONLY public.contact_form_requests DROP CONSTRAINT contact_form_requests_updated_by_id_fk;
       public          postgres    false    221    4892    231            �           2606    17445    files files_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_created_by_id_fk;
       public          postgres    false    4892    221    235            �           2606    17450 (   files_folder_links files_folder_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_fk;
       public          postgres    false    235    4921    236            �           2606    17455 ,   files_folder_links files_folder_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_inv_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_inv_fk;
       public          postgres    false    5073    236    293            �           2606    17460 ,   files_related_morphs files_related_morphs_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.files_related_morphs DROP CONSTRAINT files_related_morphs_fk;
       public          postgres    false    239    235    4921            �           2606    17465    files files_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_updated_by_id_fk;
       public          postgres    false    4892    221    235            �           2606    17470     footers footers_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.footers
    ADD CONSTRAINT footers_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.footers DROP CONSTRAINT footers_created_by_id_fk;
       public          postgres    false    221    4892    241            �           2606    17475 $   footers_components footers_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.footers_components
    ADD CONSTRAINT footers_entity_fk FOREIGN KEY (entity_id) REFERENCES public.footers(id) ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.footers_components DROP CONSTRAINT footers_entity_fk;
       public          postgres    false    241    242    4943            �           2606    17480 :   footers_localizations_links footers_localizations_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.footers_localizations_links
    ADD CONSTRAINT footers_localizations_links_fk FOREIGN KEY (footer_id) REFERENCES public.footers(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.footers_localizations_links DROP CONSTRAINT footers_localizations_links_fk;
       public          postgres    false    4943    241    245            �           2606    17485 >   footers_localizations_links footers_localizations_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.footers_localizations_links
    ADD CONSTRAINT footers_localizations_links_inv_fk FOREIGN KEY (inv_footer_id) REFERENCES public.footers(id) ON DELETE CASCADE;
 h   ALTER TABLE ONLY public.footers_localizations_links DROP CONSTRAINT footers_localizations_links_inv_fk;
       public          postgres    false    245    4943    241            �           2606    17490     footers footers_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.footers
    ADD CONSTRAINT footers_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.footers DROP CONSTRAINT footers_updated_by_id_fk;
       public          postgres    false    241    221    4892            �           2606    17495 (   i18n_locale i18n_locale_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_created_by_id_fk;
       public          postgres    false    4892    221    247            �           2606    17500 (   i18n_locale i18n_locale_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_updated_by_id_fk;
       public          postgres    false    247    221    4892            �           2606    17505 &   main_pages main_pages_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.main_pages
    ADD CONSTRAINT main_pages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.main_pages DROP CONSTRAINT main_pages_created_by_id_fk;
       public          postgres    false    4892    249    221            �           2606    17510 @   main_pages_localizations_links main_pages_localizations_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.main_pages_localizations_links
    ADD CONSTRAINT main_pages_localizations_links_fk FOREIGN KEY (main_page_id) REFERENCES public.main_pages(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.main_pages_localizations_links DROP CONSTRAINT main_pages_localizations_links_fk;
       public          postgres    false    4965    251    249            �           2606    17515 D   main_pages_localizations_links main_pages_localizations_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.main_pages_localizations_links
    ADD CONSTRAINT main_pages_localizations_links_inv_fk FOREIGN KEY (inv_main_page_id) REFERENCES public.main_pages(id) ON DELETE CASCADE;
 n   ALTER TABLE ONLY public.main_pages_localizations_links DROP CONSTRAINT main_pages_localizations_links_inv_fk;
       public          postgres    false    4965    249    251            �           2606    17520 &   main_pages main_pages_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.main_pages
    ADD CONSTRAINT main_pages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.main_pages DROP CONSTRAINT main_pages_updated_by_id_fk;
       public          postgres    false    249    221    4892            �           2606    17525 *   our_services our_services_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.our_services
    ADD CONSTRAINT our_services_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 T   ALTER TABLE ONLY public.our_services DROP CONSTRAINT our_services_created_by_id_fk;
       public          postgres    false    253    221    4892            �           2606    17530 D   our_services_localizations_links our_services_localizations_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.our_services_localizations_links
    ADD CONSTRAINT our_services_localizations_links_fk FOREIGN KEY (our_service_id) REFERENCES public.our_services(id) ON DELETE CASCADE;
 n   ALTER TABLE ONLY public.our_services_localizations_links DROP CONSTRAINT our_services_localizations_links_fk;
       public          postgres    false    4976    253    255            �           2606    17535 H   our_services_localizations_links our_services_localizations_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.our_services_localizations_links
    ADD CONSTRAINT our_services_localizations_links_inv_fk FOREIGN KEY (inv_our_service_id) REFERENCES public.our_services(id) ON DELETE CASCADE;
 r   ALTER TABLE ONLY public.our_services_localizations_links DROP CONSTRAINT our_services_localizations_links_inv_fk;
       public          postgres    false    255    4976    253            �           2606    17540 *   our_services our_services_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.our_services
    ADD CONSTRAINT our_services_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 T   ALTER TABLE ONLY public.our_services DROP CONSTRAINT our_services_updated_by_id_fk;
       public          postgres    false    221    253    4892            �           2606    17545 "   projects projects_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.projects DROP CONSTRAINT projects_created_by_id_fk;
       public          postgres    false    221    257    4892            �           2606    17550 &   projects_components projects_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.projects_components
    ADD CONSTRAINT projects_entity_fk FOREIGN KEY (entity_id) REFERENCES public.projects(id) ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.projects_components DROP CONSTRAINT projects_entity_fk;
       public          postgres    false    4987    258    257            �           2606    17555 <   projects_localizations_links projects_localizations_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.projects_localizations_links
    ADD CONSTRAINT projects_localizations_links_fk FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.projects_localizations_links DROP CONSTRAINT projects_localizations_links_fk;
       public          postgres    false    261    4987    257                        2606    17560 @   projects_localizations_links projects_localizations_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.projects_localizations_links
    ADD CONSTRAINT projects_localizations_links_inv_fk FOREIGN KEY (inv_project_id) REFERENCES public.projects(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.projects_localizations_links DROP CONSTRAINT projects_localizations_links_inv_fk;
       public          postgres    false    261    4987    257            �           2606    17565 "   projects projects_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.projects DROP CONSTRAINT projects_updated_by_id_fk;
       public          postgres    false    257    221    4892                       2606    17570 J   strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 t   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_created_by_id_fk;
       public          postgres    false    221    4892    263                       2606    17575 T   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;
 ~   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_fk;
       public          postgres    false    265    263    5005                       2606    17580 X   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_inv_fk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_inv_fk;
       public          postgres    false    265    267    5016                       2606    17585 J   strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 t   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_updated_by_id_fk;
       public          postgres    false    221    4892    263                       2606    17590 4   strapi_api_tokens strapi_api_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_created_by_id_fk;
       public          postgres    false    267    221    4892                       2606    17595 4   strapi_api_tokens strapi_api_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_updated_by_id_fk;
       public          postgres    false    221    267    4892                       2606    17600 T   strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ~   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk;
       public          postgres    false    275    4892    221            	           2606    17605 ^   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_fk    FK CONSTRAINT        ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_fk;
       public          postgres    false    275    5026    277            
           2606    17610 b   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk;
       public          postgres    false    277    5037    279                       2606    17615 T   strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ~   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk;
       public          postgres    false    221    275    4892                       2606    17620 >   strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_created_by_id_fk;
       public          postgres    false    279    4892    221                       2606    17625 >   strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_updated_by_id_fk;
       public          postgres    false    221    4892    279                       2606    17630 .   up_permissions up_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_created_by_id_fk;
       public          postgres    false    221    4892    283                       2606    17635 6   up_permissions_role_links up_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_fk;
       public          postgres    false    283    285    5043                       2606    17640 :   up_permissions_role_links up_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_inv_fk;
       public          postgres    false    5054    287    285                       2606    17645 .   up_permissions up_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_updated_by_id_fk;
       public          postgres    false    221    283    4892                       2606    17650 "   up_roles up_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_created_by_id_fk;
       public          postgres    false    287    221    4892                       2606    17655 "   up_roles up_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_updated_by_id_fk;
       public          postgres    false    4892    221    287                       2606    17660 "   up_users up_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_created_by_id_fk;
       public          postgres    false    4892    289    221                       2606    17665 *   up_users_role_links up_users_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_fk;
       public          postgres    false    289    291    5058                       2606    17670 .   up_users_role_links up_users_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_inv_fk;
       public          postgres    false    291    5054    287                       2606    17675 "   up_users up_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_updated_by_id_fk;
       public          postgres    false    221    289    4892                       2606    17680 .   upload_folders upload_folders_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_created_by_id_fk;
       public          postgres    false    221    293    4892                       2606    17685 :   upload_folders_parent_links upload_folders_parent_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_fk;
       public          postgres    false    295    293    5073                       2606    17690 >   upload_folders_parent_links upload_folders_parent_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_inv_fk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 h   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_inv_fk;
       public          postgres    false    293    5073    295                       2606    17695 .   upload_folders upload_folders_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_updated_by_id_fk;
       public          postgres    false    293    221    4892            �   �  x��Z�n�8}v�"���)����}ط�0�v��%�$'-�����m�5J�hR @�q2g��C�lҔ�uQ��ۦ��|��,�|�s����ӗ	y�"�=K���%�D��w?w�RﲮV�z����/A !�DȺN��li<�� ���# �&' (T~@^�T�} B!>(��ĂT7߂����07pC�*�i�o�GE�S�S*������R��O�[�*E�6e�BRY�㖆*?��7�Z����q���j-e��Y��V�sӘ����MVek���Wۚ�C�N�t��F���늺2�6�����e�M����VRe=��~�7YQڇ����\��g��K�����Ư����']Y��M��K����CY/���m]��s,By�s�̹�Eq��������B�c�5����e��v��߭���Ox��18��S�vo�c]�?��3&L���7+�^�>����R�r�����{#��r=닾�Y�mN��jU,���&����Ag?٫^<�_�����d��&=UИ�g�'��\�&��^�����EY����k��Q9p+�V�mSb�&3��v,Ԧ�vIX[�@p�����U�%����yf��m�����GG.rw����=�Y���)�n�h�Z�:#2Lu|��ò��=������v�`Ñ����2�\.81�ɏ��G|�����y<*.�c\��<���r�a&;;�>X<F��$�0_���9<fH����Dv��|`�9R2ܩ¨v�Ň`�#��
 Lr�����ܿb[��iI�ӿ�ͣ��t������$�Xгߒёv��,	sY�KM��v`�8�ƥ�%��tt�N'F!h�%�5J"-��&�1�(?Q�6ͿO�r`at���d3ּ��G�#��мk�m��8(V�<H��f�`�����	d�k�c�[#�o@�XEX��~Ng DyD�*ǲ��)���p)U�%±�흑"|�B>Q��љ���A�����{��+��2��˺,�������l� ��e�i�f��!n�}��� ��#�vG]�u1x�e~������Ι�w3(��IhGB�7�����?�f��Ρ�	v��S�R�/{+������R�-ζ ����+�+e��M8	z���!^jC����^T;"�p&���jL�"�pV����K�ٞNi5%��'��@�_ �% c%�W=�`���ԫ�0��GR�\C��͏=J"��D�-a�S6FȋBҮ`�S>EʑBxKA�J�A0RƐT83h� ;�+����.SA�#��D��ݚ�zӔ��#2
gL�P��������,Ϊ�΃�+Ck��i�t,�_��E+?Ga89|h��O�7]R�X2_X9�Ύ�_��c]?јK2H&�r~��`7r�.�Q{drs��r�����+�&B�c�qL���]т��$+����i��~�!2���%�9FB;�H\ͤ�H��NϤG���X
D���Y�j&D+�.s���,��c1w5���(v��:����^�"\.u�)��.~?(b�G=)���!��1�QOHf��SɉI�rRF���H����)��k]�v¿�3b��T7)b����Á��e9��0(�!
2�f���(x��S��mVu+��F��B�v<ۉ8�0(���ժ`��C ĉ����B�!Pҭ����`�Zc(d�P���%�C���)xf�yvww����      �     x��ۍ�0�o2���&s���jc�X�����Vzi���_e��:�t�u���.�u�S�o�z��7�+�u����֊�pO�`�rW��2�Y&]O�;s���q���:O����W��+}y|��ܵ<�g�eD��,��<g�53�^��&?�W&7���+��������g�����Lߙ޶`���v�w�+ � �v�v�	��۽�`GЇ@�#�S �tﵟ:�W�O����'�N�N���A#8�Fp"���^?A#8�Fp"��F0z�E0:��`t�� �7�I�	n���&A'�L�Np �7�I0^�`�7F0	��`��$/�E0^�`�� x,�A�"X���JH0���`̼����/�E0-��"����K���@���@`�����H;�.+��6�-Hk�.� ]�/� ]�A� ؃tA ��@`�����N�~�H`�����=Hl)�=H{�.������2P�      �   �   x�u��n� @g���l��V�]�d�r�K������%A����{H��:��"��y�qu-?P�O�r�`�C̀��=^	pY�B()R�L"�_�S��c������0��^w�����w^�V_�I�[���R���mM?��L�B^�7K�9 dL.dίHL�5NU^�FuL���(,S�oQٵ�<��0�=����lE�����]�4R9~�      �   �   x�3�t�I�.N�K)����L���Rsr�+�KRs����s9U�UT�#3�|�����2�J*"��s����J�ܜ�+|M-�K��]MB�
J����R�AFQ	ggQ)�����������������������B�R��$nj�gan������ �s0�      �      x�3�4�@�=... �      �   7  x����j1�ϻO1쥗��.�"�TP(UZ�/B�fWC5v��M�����������7j���z�%�I~�����g���;Ћ�T�hEk��jH�V �}�O{ޱ��^Ҝ@��-�AkS� �@�����6���v�&:s�Ϙ}��Jz'Abc�P[�R��n�~�McV�O[�n�:
��~r ��v眛f��['��	<��n'�Z.�H��݋�i��@�@�r����QGwPG.���f@%P1�)��R����;e�
�_�g�*\�C�g�cHe<��A�K�X(��lõm�l�Ԃ      �   �   x���1��0Ek�_� D��hiX��1x�X8�(��8�ބ��"z������"��E���>S�������Ktl�M�M=9n.sq��� 6��;��N��b�~ ���`٫�>�_*ώ�;T�8KZ��2�G��?ϰ����kl'0C���M�W.�4B�i�w]M>��l�(�	39(��>G�1(���i.�|��i}      �   6   x�3���2Ɯ����y���
N��9%\&�E�Y��%
n��%�\1z\\\ P��      �   �   x��ͱ�0�����hzWZ�	'']td!PQJB1}}��s���2�����l�$I�H)�8���R�~;��f�ƱBUbz"�Rp�����2޶��6dm���f�O
E�'V�_
"����M���"�TI�(�?�B���zW�[�� H*�f��!IX-c/KT�      �      x������ � �      �   �  x���M��8���_���������=�d0	# QBf�w4�}m�>B�v��ڔ���bW�@@�?6�}S�{x��o�����՗�)6o��t.��ޮ�������_ +~�َ��aD���A���־���U	0�"��C�7��u<0Ĺa�}jJ�xŀ B7�o�\#S1؅��H���-��ǩ��	�0��#)|��%K�y�J�[t�"�ӎz"�z��+y �(f�h��1ȏ��ۜRS��x�́q��/Z�&K�UL�	������cSc���]�0��C�P"�h*�#�\ �|�ٵE$�<�<r27���<+BbNbD��|���$hli+�m���[w}XGz�m�t�#*�BB�����\�B)a-�I��s>���.K��5�$A$#Q�H��[�7��|�E�vϧ@Vm�����3�q����k�d�fJ�A�1��x�"j#�R���z��.�=�ۢh{4�J�.���[����DRJ'��c�ֶ%�Kh��@����&e9O�������o�E�8v��H]I���6�0]"l��km�K���vK�E�h�����=$����m"tdy�r��P�\NEP���=���Ȭ�	��q�k��,I�H�1p����n��1�+a�Ť=03�+�G��q�[�ΩLɓ�Ǎ�F+��A�BlB!d��9(�֔�ȡKc�6�DPw��e����1b)����I{ �2��s�fq���i��Dy2��%d�l[�b���=�c�����8��W�L����Q�A�-L@� �dsy�((H���3w(�v�+���.�qk����ھ7������\����_v��;��h��?4�,U�d�p	ڙ��G�:{Ǫ��]��s�v�!�6��>�:��4~��\���T��}����Ez�,b�������ޕ)�%2��R����eއ��$��L~���U��Sq���l=���~.�!~V)�k��T�;�T��lv�*�M�hNo�K�>x.y8Ĭj������1�~�, dvGH$!�m;3��k}|%�����;j�^Z���p'���Oz�|�o�W��0����1�h:'T�繙,0�OT��yr^�;�����T��'����"~K]y�p��3e�Fv?��wEy�t����d�^%�+&�-&�A%�B����$�b��ȭ\��g#e��������m���	k�{��Q)BQ����o%�dv;������j��5|�///��F��      �   j   x���1��bNkB���_�M�F(E�xܗ�5����)���-����3t��^`;S̗��E��D_�+"����\��t�A˅�Q.,���g�]�9      �   K  x����n�0��ͻ����2	1��Lk�X׽��R�����J.>���`�9��R>�xi�+�K������0%�&x��� H+�Q�%-������c�1Uâ�W�4��a�ϴ���*S!X+@���g9|������C˙Y�K",Xk8�(YoH��?yUK�����E= ��nΫ�(��Ju,�V!W�����d�GE�=f)W��*�z�2]���^�zJ���Nu2֑5< ��5�p�`��,�E-�9�A�z$
��5<�[e� ��[��bl��nc� ��K�H0FeAm��o�r�����ʃ��/n�[�4�R@�      �   �   x�m�MjAF�ݧ(������z�s3h��a���#AAO�"7AD��n���,&�(x||T=#�2� ϵ�=�~\� �)�|�r��XԿA�*�IO�Ƥ�]3�:O0�Na�vr��:S��n?�1U�	Ǘ}P�[:�ӝn�PKnx'�N_���W��Z�#�ޝ�O��xt��6q�����.���v���0���E����{�m       �   :   x�3�4�4�L��/I-�K��+IL.��OK�LN��q�9A��*#�#���b���� ��%�      �      x�3�4�4�4��@����� *~      �   o   x�u�!�0�a}�'A��w͵P?;1�� �d�����0��O޼�GY�[�p����B*�Ac��l�S/����GQ����j�ޅ�����3Wc����5�[��2{��l��      �   �  x�mTQN�H�&���l��D�3�������tH����me�� ˌfi��lH��7�W�I��UH���^�W����R�d�F��u<�S\���ifdR;욣�2����Ç�����L�=��`��0>Q��_����~lğ���aW��ȡ�Zf����2IT��0I��g!(� �T�1���$5J&"�E��(?TI��2b�i�v�Di�P��OE(�����:3�S2HR	���TH�q���ѱvC�BM�{Ҁ�G5�l���!>��H�'��I*��*G]�p��@�p�F�W$�&�8d�i���t]��~d�`M΍XC�#���H��0B7IꈘA�����&o���*�/~��eC,�,�A0֫��q�]?Q��*���,$�k�1c(�7>|��\`��H�Q7�Iʄv��׬�[�����z���j��;oxU���~�;��k5��ͺ�Ns5�����G�Js�~+�
�\Nln�퓝�;|s�vnW�vf��߸+��j�|�?/o�O�˛~��wd���O�uy��]�3Q��Q�����	�;@\���s��� �Qy�v`0A�
�Iy����O$��%�
���.�(/�NÔ��<��3b�IWy)��P1���f�.�p*/Q~�f����p�L�<�O�?�΀���k�c��2��2�Q����'f��vˎ�w�.��m�ey��3��XA� &<J�~Y��G��,���y��&<�En蘵qa�Vl��Ƿ(^��Gd~A�/�eZ�����`�`�$.���K��+{D������0؃s�5��#�7��܌j��DDiXg|�ֆ�*�r<G����_�A�ԑ�nYȊ7v�.��4�|�#::�Ͱ
Z��+3��iA��<&�k��)�?�|�2qO&������x>1�Q�蒝��0��򜨳��#1���ڢ^�Z�=��5���i��~~״;��Z�ů�U�k�J����@      �      x�3�4�4�4�2�@W� ��      �     x��U[OG~6�b�����
E�H!��4��˰���]k/$�	HҪ"R[E�Z���� ����ߌx�j��w�|�̹|�q��'�8��,���h3[����_�������Ox��%!�:��G]�pL���i��Ĵ`⚊c9���;6�k���V�p����>o[�q|��;õZ%��a�nŖ�Uaќ[iwX��lO�d)A��O����m��m	O�Ӑ�X�S�OXʢ�]W��۞Ѵ�oh��g�j�|���t^�.��P˾�F���R-��w5�]�(E�}��R%W�L�/�a�<��;��h�j^K�N\^��݌fP���SR��4��AN�î9���+�4�]��hT�i��=��8�z��ea�W��ey�ܸ����j�,�[Z�g���є�5���PO�!i�AEKojU���T 4Ms�#`�f9]���Qƺ�8*����{~y�X��dC�q��{W�^㙰p��6�%��q4T���qr���L���h5�٩��a��xۨۚ���:�@�`[�r��3(��ʚi��r��mt-�T�`M�x��$Y���$���\�`�|���] |��`��]�C:9���K�hf}Aŏ�'4���,��y0�]�bר�j��e4Z���Ռ�[���jh�oVğ�Aq ����(��{q,�İx�uS��љϋ} ϊC|��	Q�cx�g���b@�9����q0��v(���HOyP<_a������ ܹ� �I�b@uYqT�$2Su�>��U��t�h5�*��������|,���C�D�>@/���D��@"�?�ߙ��e�}0��M�%�Z>L�8.���4�z�+��W�Ż�a�j��L�9��3X�a��3WY�%�M��8�	��6��y�@:<�����K�}])�I&�)��M��������L���1Vi�ò~H��KSڽXA*���Bi_�?����Hjn�hA��=EEQ����;LI�Ɲ�ÛU��h�\y�T%)YZ%�"���	����ujk�A�͒m��ߘ��N]�[�"�ΰw83*��4�DT@��B��Nę)	'٥���/�cR��1+����7ԻR�R��D���i��-ʐ��P��K1��W����Ҿ����� ��}�N�#��l@��ȯ7J����ٔO��ߣ_�ㅢzrr�bfʟԨt�d���Jٿ��O�!@ry�dŇ����G*�����/���etP�H�#,p���Z�C�r���Ц\K2��'��u��.&\�QJܺ��m�5�Y6����)�ڶ      �   &   x�3��4�4�2�@�)�%��6��@:F��� V3{      �   �  x��Y�r�����bGq2%!��ʚ�XJ��D��r{��\��@ �]Hf�l7i�f��hoz�i�@v�F���Wȓ�;� Hl����?"�8{���לּƃD�Ⴥ�b�����L��8a~�t<g*��S.���\D���<�т� �z��	;L�
8;����-��^����R�8��@	6JU���4>2���6���`}���dG�G*�4�'\q��� �xh#��
3�b�@(��zZ��(������/� �H���{/�Z<eG%�����<�`������c�k���L�������pcC�-���#m�3?�J�]��x�i.�B�]�l��x}�&���Yua�޹��DD�H*}�N���[~M��DS�p��O��\��rT�d�SBՈK�v�^��ڽV{�y�������r��2�3�����o��n���6�9�^��⯈n�ݨ�`���S!L�2%�v�c�Ēk��M�,�h��qx��"!�M x��1ל%2���+�&��T�x����:��$�zKx��?47�o3��>�c"��tkL�򄇩	��
.�F��K���Uۻ}�yÞ;l���fgi�k���ް��t��M����tڮ[��=im�8��+R�4����b�@*�@���EvҒ�M��vb�QM���<TpW��ADJ:�32�N9F5�8F�� �31�C���*�2��Xhe��C� g�	@%�8??�������QJ��^>�?4�������OADz7��o����ԉ��'�oz�(�n���ϝ��|g]�5��8U���3}iI
��2�<���P�i�x�Zڹe5o��h�hu�n��:}g���O��!;�%��Q�A��=��uoFY�u�n�[A�w��A5ʠ�Z���JN1v�#Dm�9*ls<��<AQQ�l= �S��&�"�(�s����sߏ�Ȅ�w�b8���s�86'$\j��)��6�O�л����`&��S?D�:LR�+��Y�E�8N}mHJ��h����������w<wP+�ް��^os��3����q��fc�ñr9o��|j����o��TM�@e$�Rg�t�&�m���EB� 7�_2��>����U�^h���IX�ϑ} Jৡ����Ij�n&��l(��\î.�J��<	���nk�v��{�n���5pW���_+vcc����o!��f���6,Gӝ��`+$�H���Z�Α�3�C=�� 0A
���}ƨT�{��� ��5�/����V�q��h^<����R��ڈ-�T%!?�e�"R_Dt��Z���^;動�Ds���V�v�Fs�+���7�����U�Қ�m|=���r���]Y�ga�_dg�ϲ�����<{u�"���*;�~�]b��������,!�^go��E�=�ϳo�~��W٫�,��__������^��.���Y����l_��%�^1|�4�='9����g`r��gxq�}W?	O`�֜qH����"Z��[�����6���_Q�Gd�P����r�6�r�j��7"%.I��-}��¾cF���vg�(>I�o�+{ �W���7?���%~����,�Ψ��.�M!ي㡋ò��r+^��ӿ������@��)�5&.�q��-�Bέ9I&����[�Y_��0�ހ�$#վ''�B��H���k�\�6��e��s�i+c1���ʗA��)�: �:���x�6�8>P" \]��<V�;�"�ʲM��ӏ�1��:����)W�|�����&���W67(/�Sޑ��m�<�6.v����Q����r6;�޵IP u��po�w ��)25�#�Ј�5��j���N6v���'��Ի�0�
Be�ˬ�@a8�]L�gORR���Po�8H�k���yT�'2�8O�5��s��Q��g�*~wP�dn��f���$�:�Ԡm���-�>�u���ʋ�-���!J ����F'v�2=֠�e�%x��X !��!&ie��ׇ��TZ�ͱے�Y�(C�Xܠ]uy�d}Z���lV�e��m���4ՏQ Ed}ܪ����-�q��aHN;���X�@�S- ��p�iԫX*$��ێ<a_�
M8�ʄ:Ô �0疆��z;Xe����̐��$�~ \R��������B�� Ɛ,�{�GF45��ꆂ'Y_q�b��톡9�B�0K	��L��|}�ϑZ �sLZE
����{������lxa�}9�Q5�*�Aoh��*wI��߿��Fv��r����"s\�xH��g@K�>]��En��²:�k��� ����8t͠&-�͝�U�C��d��_W�F܁�����9��.�Qw�W�K�m�&�~�+pV��0���-�k��U��À�D'�)^����W\�2P���3(�4qм����y4-�:� �9mF�`�i� �����5�]tte��L�\����-6�0H)�$�m�h�Ռ �9�2�� xo�#���`U3���!ki����j�Wn���n�Q�M�Ub��Զ�&�
�.Rm.4�۫w䂢96���Pv8�F2�`��6�Ctf��r*A��qYz�P:
����X�`�I�,���&@��ĜdS?<�[�]}�ь����6ʁT�*�a:"7��4�x�-e Z����m4;F%�
�Q��#��y���N4�Ů�(�Zu~�a�R��N�鴲S�Q_(cJY^���j��V̓�Te����6G�	.��b��*AN�}��d�	"�������A�K�k}�\S���0���[Q�*��D��<�H�4��.o�H#uȘn��`o�}�K�ս�ݍ���~�ڛ�&P:�J 8$���@j&	_ƈ�d��H4B��E�&�E� ;bM榿y���-��͕����y��s��U���wG@��N����Jҽߖ��v���歫��]���W��oծ�^{䬭���J]e      �   V   x�3�4�4�,NM.�����HML��K�,(��
ŧ%&���Dc��-Pԃ��T�d�prZU�Vi�ed TiFX�1W� ��:m      �   )   x���44��4�24 Q& �!��)�!�e�	as��qqq ���      �      x������ � �      �      x������ � �      �      x������ � �      �      x��]�n�F���<EO�g!�uq|2�u2	��-�2� �d����l)�!`_c_o�d�~/v��l���f�-V��aչ|�x���`����"JʢE-�"��{�]����J���-A}~���8?_�j��5�p�y������h�k�4YqU��?����:��`|�T+p8�ey*�J�*��W����ٟ�����"Ί�3��ђ���Y�ʛ�e��p�hx[���m���8��t@�qc��� ��/l̳������n㬆d����F:� �IH,�I�-I�1�����˜�/�du&��(I���q��^�Ug T��W��p\+�����V _@OP������1Κ��W����eUB%h2`�`�uV�~�
5R�,X��Z��W!��oU�?MN���yT�L%tla���#I����R+;1N'g��J�}x]-S7��q^e��}����yU%b�Uu�y��mѸ�g��]��@|W�l<���i
���'V�O��Q?~�LL�c��?�?�M��m�ō��#P�T�Z[���6O�I|��?(1s����}s��B\�`����`~LD��w�Ȥ�������P�^�L�����x�ԗ7ep�E�yNU�^v�v�O�гo7wu *�;���{~j!m�O��P@��J�ŷXm,a�� %�8[ �f�[����U�Yh<�h���)���u�������:�3���,R�~�_	���U��lw	�>��q�|�]Oj�Y���v���ˬ�}�E�s.S��l�el�
�m����W@�e��LՃbg�	eڡ��4nU|��F���;��D@�Y������O-(��^P��]��Ϡ�6����V�D6�HC����qOpk�����F�i��Ǝ/u��9�8�m��*.����jk����lv����6B@^y=̆�p=�*�6۷ֿ�:l�:P�&|6���[v��6B�F���g���'5���LuQ���"���<��M�<x�7��+R�ZV�Jԙ�r!�cUj�(Vy\��=$^1�r�G7Y���1��r�r��1���Kc��G�+�K� ���M��t��1:"��4U6]5�H�p��N1|>�/��נ�j�Чa����W��W���\�m�R(��j<Ak���%���T��"[1��J=Ա=ꡋ��}�$���K�W ��*��P�����m�L�� vG�&��@3VS�u/FBv�ɈQ<��]�֭��`|�̠�*���VY�\�"��eV\*��Uv��R��}e�y�ȐvI�F��EQ0p���k��*�B�2�%���6�bSح T�����%r�ᅫ����/��+tI��и����j����u�M����<o_�gLp��+0�E5VE��J��F���?����ғ�'Eh��\"G�V�{�e�tC�˸�o�*���:gsp��wd@�:�%��g�:����X��&�կ�v��K=-�݉�=����W Y��i'5�<�����v�)��b�F�F`���09��er��}Y����:��
��2�ζT�����6k����y���S�N+}�����\lp�������#-�v��X���GW̼���6�d����Q�D3�tm��(�F��{{���T��j��vK�9��)kfr{/�T�t߁j�"^.�n�5��&3������ǵ�T6��6�Š�s����������@�{;$`�n��)"�e��q'�:�Zf�K�[QA�@�����TF����@E;H��{�(�c<i�X;��TL��_(�����,r$�U��$:$|��)(�����؂佖n��$�b%5O\�����T�a]������@����?��,�ª*R��x�$�����9�
>�`���7�l�]e��`5cҎb�!FĂd��dC�6�=o���/�^�:e9D�n%�ڲ��|A�ER����!i����ᘠ�_�N�躎:g��e�ϡY���-
�z:��%����FqE��VS�����������$~�p:��}bsk��l0��������l�������F���j:��?mR�b�Z#!7?!�"�$2���b�g�4>h���}���[!k����Te���t��q:�e��V� �&��>M��-�����2��d�Ig���1�+�X��󷒸c��m�"���[��?�ռ�pì�q�wHя�����i��6KDJ�O�l�޷��|�����o���&�»騄B�J@��)���1�a-���;.q�ՇXo��!��!�qfat�Bz_čU<��D�G�=�ܷ?l�#aH�Ȇ�AD^",��h	!�}1?�j�|�ǱԌ6ȃ�<���$ӣ�ō��h��Fg�AM��QC�ltp_/
�J�(`��E�td���?m��	8$���C�f�}4J�dk�i��X�\V������В��aԙ�=ڬ;�}վ��4Oz�I��=�
�/��V��,wV���<��Ǯ�(���v�NzmB����*W/��F�qYvR�
���� 14
Hm �6	��t�tjvR:��`�m|\��x��@�`-D�F�d'/�I^&1��v(��)�ZC�j�hR��5#���*�5���b5�3�p`�Oz����{�/��מ�Nv���~�tgtg{#������S2��mm���w���/'/���CHT�@~>Y�̳Z���_vyq�G�=y���586_hi�-���`��B�K������Sm�>~���[��|�2�2���i�5!�y0��rȴ��R5TU�}�.,���W�7*pDzm9������ۥ�,bd�k�j�}y�t��ʕ���c1;�#��mkqΦ(AU�l8�Q�{5T���p}�1��x��E戢m��Uܤ�ao����'��P0���c��PvL6@}lJ|�*��[י�a��T)��}g����x�*��G6&}}�!x���x�`{���	�� {S��?V�����q����#�DP�'��h�]�ΰn�@�D�@K��u<Ͷ�����G�k�z��^��2�Ƕ���������L31;�C�V�.0�"n(���Cw�%mFz��~�cjU����=@�ݒ,vǚ�Cinml�#�T6b.4����N����GGS�8}����~-�8X�A-�� �!s����"b��>�����;�)	�I��Yy�0Ԭ,PM�?NB:�F"�[�v1=#m�ݦ����;V�&kro�b$<�{���B=�l�% � y��\,����%�܊��0���V�	$���W�)٤����H,pZx���YK��0��b�+P���8 � �v�T;� (��`b�3�I���p�[�wT��1�$�.�����h	'g�y�tG����/AUS1�`jٿ`����(Z
-D=O�3u�yyUJj�p�2�[W��dL�닅C~xm��G�J�қ���z(,d��{����F�q��Е,���MYe�%_��z*�X�\UG��@�<�~Kxk�{5x_D�kQ`����R���oW��Ը[=v��+�(��M�e�O �I���,F����^D��T?9>�)���M.��)X�`ywdy�����z���;��%e���-��7�΄��	��{Z4�Q�O����R��h���q�ĝ�
{_A��=�H{e$�Vwy U�5{��KZ4�:RGs�h��wؙ�m��D�&l@�(Λ.^z�8K�,��tT<�l\<��ӽ�X�o�D@�����l�i���/��b��y�`��t�(��3\��-��A9E�~}�����LQD����UD���)�!s��>>��A����+3]�ײ��e�º|E>AC=d�=��}rL���@����+�{�c��y�m�4�_��/$-�M�����asI�7�� G��m\!�#�a����8;ڹ4�40���cɛ�i�3J؇7�о΢�<�*}�����6D��g���M+H���LڎSU�i�#���14�1�)��'��!�䝟��p���[�\t�Ec'��hk�D&�#+Je�3o�W���J �  ����z�U�YVՍK2�a;̷�D�N�Av�3 �]�"�� �>/d�$�R~:��Q��f���gR�m���O��Vf�[53c���2k�d�����3s������&�p��r��-Ү2ַ�������4�┷��D�ˀH�m~q0>%�>|�sT:����2�^I�	` $Q�&%�>|��
�[z��u����Зwq��~��0�`���Y�*A�ٲq�ۆ`X"�5�%�<�1���[���)�`~�Y��s͚��YA��bT`*�����ݯ3,��gb�=��$D%_WT"#A	lq<c�M�hD2ds��{9H��(cK��	p�S���\cL��Y��wp���Z%^Z[g�J��jeo�I �~?h_�f�l�6�7�����+�����k]5Ç���H�a:<�>��!�F��������-~�e�`}��ֻa��P�Ȇ�����F�Zе�����n��r;�-$����'C�çA�������(i?�WUM+�˵�G����YS��vĸ4���(�ޫ��l��l0?���cmR<�� S Lk�3���&�Sj����Dn�M�$Y=����:`+Dz�D�l	��W�<zxx�i.b�~I3�u6�.Cpl��ecgz+kd����a�6K힛4� ����dWs�Ӗ!䤽2�J��g�k�i�l'N����ں��� �H{�K�k�P�����n�@����8H�7|}�(a/TUY_�˃����_��W��I��q��˛�n�h���6�E�!9�G���1�|�l7q�؞�q>��#��Z�qA���@<�큸F0��)$�D#�[

�[bz~-��$���z/�|��'���0�a��{s�@q���:�_kiV���9��6xP��;���� �>��`|ֶȑma��������#�*��⢁dE�N��W���S��yIN�Y���֙���z���Q�@�;��|'�c|��I�j�O�-Ox�%Ab}E�͐�6ѹ���iY^����տ��
ta��j�G0qU�W9ha�v�02�cݸY3_M��%���ﰎK���?炇E�Te]Κ6n�"-o�.|p�NV&P�S�Bs�5��,X��[��(￨��ʢe(ѧ�`�&��F���G��7m�~s�e�u���!����d�uj���Q���J�g�5t�E�K.�=V>�(����pL��ijV��Ț����-��j��m ?w7�N�r����ײ\�f(0����)M>i����Pc�����a>P��6��ꨁ���󄇱r�g�M�<K	�;w��]L��ZXQ�n�DdL^�V�l�.�Qj��u�~Ĭ~�0�M�{�Ǚ#9�������L��7`�u�V��X)F4�Jl)�z����S\��� 9_b�ˣ
,��B=��$+�$eu	���74Y����w����U`�y��w���Fs��Q3��������3�/��nO!����ݓ����Z�� ��մ,����ݢ��7$���N&�� X�K�7�F�N��r�gH�R�$����F޽����D�f����|�ϟ��+�ؗ󸸮'�ژgkGr�i�:Y��J� �P�.��U����i�)+����UF��@�u��A+1�o �sJ��:wD]�dt��.V�g��>Z5�V0B,o'
Meu�x�~|����IӼ�c����M\$ E/0qy,6[�|�Q{t��c �&]��U��n�Ӭbe�H/��2"���	 ˒�@ňP��B����3�P٤�'���rC޿À���N���m���{��<a��ZLc��{;�6w|@*0��g�%�XI��s� �����2!�5�,E�m��an�\�۶)�zߥ��{m����㕔h���|=�׶#p������9�egȌ����GQy?��fg'����f(��6��б"1��@�=v�F:��6{h����N�&��!�ޚ�X�uK��t\*��)��{8�(Z��H �zt�,�^�R�J���-M�6��ioi�ɳ��ς�ZK�w�է�J��=�ԉ���E$C.�����r���m ?����ՙ����)��̅׋��f�tr������60�>� �=sL쵅-y&���XG�[�������:�g�KGT7X@�!�	'!��kN8�eP^c�= ;�)�YnKvF˾�1nKc�A�ye[�q^ߙ�?	L���� )+�j���D�4{�ړ|�w`�\P4�o���Ӻ._����H7t�x	�\�0�ص���x�u~�>��t�w^O�G'/F�g�����tL����� >����/�>?>>>}�����F��Hڠ]�b��~딯w�}uRߠ9&��5z�=KϦ�l6����'�i�'�~�=�p��T�`@8���Z�L����fI��1}-�	��^�͞�}���h�[��o}u�m����#��u�>1 �fb���r޷��܈�ZM���k�ڪ5E�~2uoV�E������R��$���W7\ܒ���e佹�o!����8���p�ZG&jE�6(�\��Q"RWI����l���؟ӷ���+M���,��q��N����hْ[M�<�A��q?N��,K@�ދY��z��1���/$��Ժ�(�9D%���v��N����Ҕ~��Sm�G6u��>��Z<�itܾ��;?Ƴ����QSY�Կӏ��>�ְ?O���zO`�C�����2�Wj�,Bm~G� #b\[
����a��#d�'���Y:��o?B�G��V��1,��#Q���=�cM�1¼�a��m���F�i����G��bEW-�����fɴ,VC��&�0��Im���J������7���/����Ui���xz��m��S���T7Y&�o52st
�/,������?��DBp���~͎���j��J"��wf�N���7�|���C;�      �   �
  x��]Ks�6>ۿ"��$%)�GtK99���%�Ӯ��!13�8C������9|  �)��%�n �_7^ͷ?���ch�̻��^��ػ�2����M����'f�����x$�����+^�}�;~j4ʏ�	�Z�)�~��q�JJ(����Q��ݳ4Ǜ�ςh��[A7�;�G�#���<�6^Lٟ�/��m�<�
Yp���P��o����E늦t�g�W�d�Q���_XGދh��-gT1 l�IJ�r� �0��O�S�A�����@�ùjm��0�i���0
q�u���h������؀1�˂=��Ra��ZI�'8=�,#4ꭸ�_h'b8��O>	�݃��ho�֓2��$�P�-(MLɖ�/�;��8��Ǻ��yV�R��CG��J�_p�YY�_?~����ó�h���X�A+��j~���oY���~-Ii�W�`�v4	k��Ic���_�0R���:���^�—6�ݿ�W�y��X޳
1D��I2���>��t�Z FS�o�J�b��KMî[1�ޡ4�\Ɏ���g#ϣh��H�P�}�i�#�f~��g���)ޓr�W��H旱�cO�M	:.ۈ ӎ~�RaL�G(��h��.����"���U��aEM�nXa |Xa��+
+�=q@CP�!΂�$��l����bw���{�;)f�SJ��x���p�����4���P�,�&�9q�bό��KB���
���Ӛ-�������fw;�a'�a�	�l�ٓ|M��6��4�枃�+���g�&�2��]
}cr�Ao��+�ݢ�_�]�t�M�t�����sq5��r�`���T7�p������#���<�(*l�,��h�� v�C�.m��hЪ�N�x�z:�D�S���(Q+���Te�(d�+�B�\���mJs%�[ر�~iؑK}��,��ŠqW�C��h(b婽���s��V|*�����D�1�CaRʢ��#��s@�r��H`��r],S*Guno6w¦� k�	�샳��$������ ZF?Xr��܍�6Z�ti&���4�{ȋ+�W]lY�&���rN�s�y:�눌��u�t�!��X��ݍ�P c3��c0w��}�G4@�{�^c��Ӱ���rA®qC��5 �����y2��7,� $��["lH����m�9 [`�K���%�e�:��D�@�.r^�!=�;Cg/g%9yڷKp�n63��q�����5kl�]`����;R�"����f�9��^��-��3d�<����gL���E��1��-�lAVHOm��W�}h�]1w���@c��q����v.�8�ۈd���R<U�:Z��j�hg�)e�	h����wS��oy@y�4���#,Z��|�/���/ �����ÿ��t��G0�
��6�9��bVLgFw~�/p����/�y���H�7�0�"�<��d�>���W��O�7����Ma�P:w�����$�凹��}k�fNl�3� ݋Y�k9[ײ�ޓ��S:O9�)zLh\��_�5��6��~�x���%S�ep )��_6ݝ�������\1��c3CT~���?m?j, M��\^k�#?�wY�I���R2$~���^�i�DH��tD%�%�LhZ�]���cU����z�J�zф`x�����?��rH��H��fO�k�c��Jھd1��.���6Y�>*\ߨ�ŞI�鼸<,�Ŋi]=�����L�_`��kl���"�*^#+!U�I�ύ��]�PA"�1����᧧ඁg�U��&��M�Dw��'�ϫ1�3e�<��j�R���H�͈�K���q�+�<N�,M�����Y-j�B��u�Z��_�Ϫ1�|�~U�T#1Qha5�)���Ψ�"�<L�6e�c?����!V,�2΂��tI���v��F+����
"����UA�Nx���}9�49���pJN��,4�O«آ�$+�t̭OB��ģі�����"M�k��qV��6r؍�
\����@s�� M�qI�5-�a��j<����̋�:�푑<�⨦">��t�E(Y�њbL�;h�N׵�L�:�$iz�
]`2x�TP4v�&Wϴ)q�7p#��q��IM{P;¨���u!�p0�`xp[y�.�k�Z�P�FS�u^A���a��6j��ñ��,����9U�e\P�`���L�.?������V�������t���+m��3�U����*���r��$NM�t<�(�.�8l��%��.�P��<��&��r�aPI ���)�g���3���	��s��t�_��ܔ�۹�Vᥤ�� ��%�D���=M�y<^�n��q����������8t��@+����|�6wV���m@��
|ܖ�2�(o�
����F���u��>%��uKe3�*��p�S]��0�δ
J��:���C�K�+0h*$��R�)C���DO�%Y�tT۔y�6���aǇ���<
-�gM�$e�Ñ�a�-ދť���B�Z��J	P�|f�5Wk���
��q:��&�F�6\&��eʇ�>�y�Z���0� (�.kCi_�`�����M�ƺL^3+E��KES�&kE'*Z�E]B��W�4ִ�^����U�^t��E'[P�d5��e��B���&��G�::�	aI$e��Z���q��E(�Ct%�9�&�gNC��=������������o�~wss�����o��^�������6@[��w?��p�{�����y��^�~��Lbq      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   E  x���Kn� E��*��V��]@&�yvhmp��/�%�8Hv%$�����0�S�����vP�)��K� FG$G�Li%(9�%e���%��= �ɟqs���7�܏����Ⱦ���}_�gz�����y�����"�"��`���+:�<�M�*F�A����V�A��o��1�}z�%9*!L�Qv���V�k(I���,����3�L�-|���z��ѯ���L��O	_�=g����3�5&�f|�n�duJ��e�yhx��/�b�O��ƣ��d�k���Ђ�K��!Z��	�^�ի��;�$I~�u��      �   U   x�%���0CѳT��%����LO>��ǅ5�>bL丱�Ń3>xFݐj�:fՇ�:ePw�r��P��J���E�2Bv      �   �   x�3�t,-�H�+�LN,IM�tIMK,�)Q(��IUH�,K�S(�WHDV�PZ�Z�ǉ"�id`d�k`�k`�`haehdej�gfi�S<����8J�r2�qX[�����l&��@��t��fV��V�z��Pc���� gEN      �      x������ � �      �      x������ � �      �   �   x�u�K
�0E�7����_[}kqd	E"���6N!�ù��x�50��hOcOs�gWs�8�59����{Z^r4����>���kCq]��_�|<$����%m�ے
�>���؜��"�4y�\bagY4P      �      x�3�4�4�4�2�4�F\1z\\\ I�     