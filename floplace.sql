toc.dat                                                                                             0000600 0004000 0002000 00000133512 14203514413 0014441 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       2    2                z            floplace    14.1    14.1 ?    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         ?           1262    16395    floplace    DATABASE     e   CREATE DATABASE floplace WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE floplace;
             	   thedronit    false         ?            1259    16396 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap 	   thedronit    false         ?            1259    16399    auth_group_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       	   thedronit    false    209         ?           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public       	   thedronit    false    210         ?            1259    16400    auth_group_permissions    TABLE     ?   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap 	   thedronit    false         ?            1259    16403    auth_group_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       	   thedronit    false    211         ?           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public       	   thedronit    false    212         ?            1259    16404    auth_permission    TABLE     ?   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap 	   thedronit    false         ?            1259    16407    auth_permission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       	   thedronit    false    213         ?           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public       	   thedronit    false    214         ?            1259    16408 	   auth_user    TABLE     ?  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap 	   thedronit    false         ?            1259    16413    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap 	   thedronit    false         ?            1259    16416    auth_user_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       	   thedronit    false    216         ?           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public       	   thedronit    false    217         ?            1259    16417    auth_user_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       	   thedronit    false    215         ?           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public       	   thedronit    false    218         ?            1259    16418    auth_user_user_permissions    TABLE     ?   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap 	   thedronit    false         ?            1259    16421 !   auth_user_user_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       	   thedronit    false    219         ?           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public       	   thedronit    false    220         ?            1259    16422    django_admin_log    TABLE     ?  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap 	   thedronit    false         ?            1259    16428    django_admin_log_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       	   thedronit    false    221         ?           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public       	   thedronit    false    222         ?            1259    16429    django_content_type    TABLE     ?   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap 	   thedronit    false         ?            1259    16432    django_content_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       	   thedronit    false    223         ?           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public       	   thedronit    false    224         ?            1259    16433    django_migrations    TABLE     ?   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap 	   thedronit    false         ?            1259    16438    django_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       	   thedronit    false    225         ?           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public       	   thedronit    false    226         ?            1259    16439    django_session    TABLE     ?   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap 	   thedronit    false         ?            1259    16444 
   web_basket    TABLE     ?   CREATE TABLE public.web_basket (
    id bigint NOT NULL,
    session_key character varying(120) NOT NULL,
    "сategory_id" character varying(120) NOT NULL,
    product_id character varying(120) NOT NULL,
    product_value integer NOT NULL
);
    DROP TABLE public.web_basket;
       public         heap 	   thedronit    false         ?            1259    16447    web_basket_id_seq    SEQUENCE     z   CREATE SEQUENCE public.web_basket_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.web_basket_id_seq;
       public       	   thedronit    false    228         ?           0    0    web_basket_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.web_basket_id_seq OWNED BY public.web_basket.id;
          public       	   thedronit    false    229         ?            1259    16448    web_category    TABLE     ?   CREATE TABLE public.web_category (
    id bigint NOT NULL,
    "Name" character varying(50) NOT NULL,
    "Image" character varying(100) NOT NULL,
    "ShowInMenu" character varying(50) NOT NULL
);
     DROP TABLE public.web_category;
       public         heap 	   thedronit    false         ?            1259    16451    web_category_id_seq    SEQUENCE     |   CREATE SEQUENCE public.web_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.web_category_id_seq;
       public       	   thedronit    false    230         ?           0    0    web_category_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.web_category_id_seq OWNED BY public.web_category.id;
          public       	   thedronit    false    231         ?            1259    16599    web_contactus    TABLE     ?   CREATE TABLE public.web_contactus (
    id bigint NOT NULL,
    "Name" character varying(50) NOT NULL,
    "Phone" character varying(50) NOT NULL,
    "Email" character varying(50) NOT NULL,
    "Message" text NOT NULL
);
 !   DROP TABLE public.web_contactus;
       public         heap 	   thedronit    false         ?            1259    16598    web_contactus_id_seq    SEQUENCE     }   CREATE SEQUENCE public.web_contactus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.web_contactus_id_seq;
       public       	   thedronit    false    241         ?           0    0    web_contactus_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.web_contactus_id_seq OWNED BY public.web_contactus.id;
          public       	   thedronit    false    240         ?            1259    16452    web_flowers    TABLE     j  CREATE TABLE public.web_flowers (
    id bigint NOT NULL,
    "Name" character varying(50) NOT NULL,
    "Components" text NOT NULL,
    "BuildTime" character varying(50) NOT NULL,
    "About" text NOT NULL,
    "Price" integer NOT NULL,
    "Category_id" bigint,
    "Image" character varying(100) NOT NULL,
    "Additionally" character varying(50) NOT NULL
);
    DROP TABLE public.web_flowers;
       public         heap 	   thedronit    false         ?            1259    16457    web_flowers_id_seq    SEQUENCE     {   CREATE SEQUENCE public.web_flowers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.web_flowers_id_seq;
       public       	   thedronit    false    232         ?           0    0    web_flowers_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.web_flowers_id_seq OWNED BY public.web_flowers.id;
          public       	   thedronit    false    233         ?            1259    16458 	   web_order    TABLE     ?  CREATE TABLE public.web_order (
    id bigint NOT NULL,
    "Code" character varying(120) NOT NULL,
    "Phone" character varying(120) NOT NULL,
    "Email" character varying(120) NOT NULL,
    "Order" text NOT NULL,
    "Delivery" character varying(50) NOT NULL,
    "Address" character varying(120) NOT NULL,
    "Price" integer NOT NULL,
    "Status" character varying(50) NOT NULL,
    "Name" character varying(120) NOT NULL,
    "Paymant" character varying(50) NOT NULL
);
    DROP TABLE public.web_order;
       public         heap 	   thedronit    false         ?            1259    16463    web_order_id_seq    SEQUENCE     y   CREATE SEQUENCE public.web_order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.web_order_id_seq;
       public       	   thedronit    false    234         ?           0    0    web_order_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.web_order_id_seq OWNED BY public.web_order.id;
          public       	   thedronit    false    235         ?            1259    16464    web_reviews    TABLE     i   CREATE TABLE public.web_reviews (
    id bigint NOT NULL,
    "Image" character varying(100) NOT NULL
);
    DROP TABLE public.web_reviews;
       public         heap 	   thedronit    false         ?            1259    16467    web_reviews_id_seq    SEQUENCE     {   CREATE SEQUENCE public.web_reviews_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.web_reviews_id_seq;
       public       	   thedronit    false    236         ?           0    0    web_reviews_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.web_reviews_id_seq OWNED BY public.web_reviews.id;
          public       	   thedronit    false    237         ?            1259    16468 	   web_staff    TABLE     ?   CREATE TABLE public.web_staff (
    id bigint NOT NULL,
    "Name" character varying(50) NOT NULL,
    "Image" character varying(100) NOT NULL,
    "Role" character varying(50) NOT NULL
);
    DROP TABLE public.web_staff;
       public         heap 	   thedronit    false         ?            1259    16471    web_staff_id_seq    SEQUENCE     y   CREATE SEQUENCE public.web_staff_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.web_staff_id_seq;
       public       	   thedronit    false    238         ?           0    0    web_staff_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.web_staff_id_seq OWNED BY public.web_staff.id;
          public       	   thedronit    false    239         ?           2604    16472    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       	   thedronit    false    210    209         ?           2604    16473    auth_group_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       	   thedronit    false    212    211         ?           2604    16474    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       	   thedronit    false    214    213         ?           2604    16475    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       	   thedronit    false    218    215         ?           2604    16476    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       	   thedronit    false    217    216         ?           2604    16477    auth_user_user_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       	   thedronit    false    220    219         ?           2604    16478    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       	   thedronit    false    222    221         ?           2604    16479    django_content_type id    DEFAULT     ?   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       	   thedronit    false    224    223         ?           2604    16480    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       	   thedronit    false    226    225         ?           2604    16481    web_basket id    DEFAULT     n   ALTER TABLE ONLY public.web_basket ALTER COLUMN id SET DEFAULT nextval('public.web_basket_id_seq'::regclass);
 <   ALTER TABLE public.web_basket ALTER COLUMN id DROP DEFAULT;
       public       	   thedronit    false    229    228         ?           2604    16482    web_category id    DEFAULT     r   ALTER TABLE ONLY public.web_category ALTER COLUMN id SET DEFAULT nextval('public.web_category_id_seq'::regclass);
 >   ALTER TABLE public.web_category ALTER COLUMN id DROP DEFAULT;
       public       	   thedronit    false    231    230         ?           2604    16602    web_contactus id    DEFAULT     t   ALTER TABLE ONLY public.web_contactus ALTER COLUMN id SET DEFAULT nextval('public.web_contactus_id_seq'::regclass);
 ?   ALTER TABLE public.web_contactus ALTER COLUMN id DROP DEFAULT;
       public       	   thedronit    false    241    240    241         ?           2604    16483    web_flowers id    DEFAULT     p   ALTER TABLE ONLY public.web_flowers ALTER COLUMN id SET DEFAULT nextval('public.web_flowers_id_seq'::regclass);
 =   ALTER TABLE public.web_flowers ALTER COLUMN id DROP DEFAULT;
       public       	   thedronit    false    233    232         ?           2604    16484    web_order id    DEFAULT     l   ALTER TABLE ONLY public.web_order ALTER COLUMN id SET DEFAULT nextval('public.web_order_id_seq'::regclass);
 ;   ALTER TABLE public.web_order ALTER COLUMN id DROP DEFAULT;
       public       	   thedronit    false    235    234         ?           2604    16485    web_reviews id    DEFAULT     p   ALTER TABLE ONLY public.web_reviews ALTER COLUMN id SET DEFAULT nextval('public.web_reviews_id_seq'::regclass);
 =   ALTER TABLE public.web_reviews ALTER COLUMN id DROP DEFAULT;
       public       	   thedronit    false    237    236         ?           2604    16486    web_staff id    DEFAULT     l   ALTER TABLE ONLY public.web_staff ALTER COLUMN id SET DEFAULT nextval('public.web_staff_id_seq'::regclass);
 ;   ALTER TABLE public.web_staff ALTER COLUMN id DROP DEFAULT;
       public       	   thedronit    false    239    238         ?          0    16396 
   auth_group 
   TABLE DATA                 public       	   thedronit    false    209       3471.dat ?          0    16400    auth_group_permissions 
   TABLE DATA                 public       	   thedronit    false    211       3473.dat ?          0    16404    auth_permission 
   TABLE DATA                 public       	   thedronit    false    213       3475.dat ?          0    16408 	   auth_user 
   TABLE DATA                 public       	   thedronit    false    215       3477.dat ?          0    16413    auth_user_groups 
   TABLE DATA                 public       	   thedronit    false    216       3478.dat ?          0    16418    auth_user_user_permissions 
   TABLE DATA                 public       	   thedronit    false    219       3481.dat ?          0    16422    django_admin_log 
   TABLE DATA                 public       	   thedronit    false    221       3483.dat ?          0    16429    django_content_type 
   TABLE DATA                 public       	   thedronit    false    223       3485.dat ?          0    16433    django_migrations 
   TABLE DATA                 public       	   thedronit    false    225       3487.dat ?          0    16439    django_session 
   TABLE DATA                 public       	   thedronit    false    227       3489.dat ?          0    16444 
   web_basket 
   TABLE DATA                 public       	   thedronit    false    228       3490.dat ?          0    16448    web_category 
   TABLE DATA                 public       	   thedronit    false    230       3492.dat ?          0    16599    web_contactus 
   TABLE DATA                 public       	   thedronit    false    241       3503.dat ?          0    16452    web_flowers 
   TABLE DATA                 public       	   thedronit    false    232       3494.dat ?          0    16458 	   web_order 
   TABLE DATA                 public       	   thedronit    false    234       3496.dat ?          0    16464    web_reviews 
   TABLE DATA                 public       	   thedronit    false    236       3498.dat ?          0    16468 	   web_staff 
   TABLE DATA                 public       	   thedronit    false    238       3500.dat ?           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public       	   thedronit    false    210         ?           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public       	   thedronit    false    212         ?           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 56, true);
          public       	   thedronit    false    214         ?           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public       	   thedronit    false    217         ?           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public       	   thedronit    false    218         ?           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public       	   thedronit    false    220         ?           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 54, true);
          public       	   thedronit    false    222         ?           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 14, true);
          public       	   thedronit    false    224         ?           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 34, true);
          public       	   thedronit    false    226         ?           0    0    web_basket_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.web_basket_id_seq', 85, true);
          public       	   thedronit    false    229         ?           0    0    web_category_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.web_category_id_seq', 3, true);
          public       	   thedronit    false    231         ?           0    0    web_contactus_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.web_contactus_id_seq', 2, true);
          public       	   thedronit    false    240         ?           0    0    web_flowers_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.web_flowers_id_seq', 3, true);
          public       	   thedronit    false    233         ?           0    0    web_order_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.web_order_id_seq', 15, true);
          public       	   thedronit    false    235         ?           0    0    web_reviews_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.web_reviews_id_seq', 6, true);
          public       	   thedronit    false    237         ?           0    0    web_staff_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.web_staff_id_seq', 1, true);
          public       	   thedronit    false    239         ?           2606    16488    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         	   thedronit    false    209         ?           2606    16490 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         	   thedronit    false    211    211         ?           2606    16492 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         	   thedronit    false    211         ?           2606    16494    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         	   thedronit    false    209         ?           2606    16496 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         	   thedronit    false    213    213         ?           2606    16498 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         	   thedronit    false    213         ?           2606    16500 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         	   thedronit    false    216         ?           2606    16502 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         	   thedronit    false    216    216         ?           2606    16504    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         	   thedronit    false    215         ?           2606    16506 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         	   thedronit    false    219         ?           2606    16508 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         	   thedronit    false    219    219         ?           2606    16510     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         	   thedronit    false    215         ?           2606    16512 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         	   thedronit    false    221         ?           2606    16514 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         	   thedronit    false    223    223         ?           2606    16516 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         	   thedronit    false    223         ?           2606    16518 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         	   thedronit    false    225         ?           2606    16520 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         	   thedronit    false    227         ?           2606    16522    web_basket web_basket_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.web_basket
    ADD CONSTRAINT web_basket_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.web_basket DROP CONSTRAINT web_basket_pkey;
       public         	   thedronit    false    228         ?           2606    16524    web_category web_category_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.web_category
    ADD CONSTRAINT web_category_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.web_category DROP CONSTRAINT web_category_pkey;
       public         	   thedronit    false    230         ?           2606    16606     web_contactus web_contactus_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.web_contactus
    ADD CONSTRAINT web_contactus_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.web_contactus DROP CONSTRAINT web_contactus_pkey;
       public         	   thedronit    false    241         ?           2606    16526    web_flowers web_flowers_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.web_flowers
    ADD CONSTRAINT web_flowers_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.web_flowers DROP CONSTRAINT web_flowers_pkey;
       public         	   thedronit    false    232         ?           2606    16528    web_order web_order_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.web_order
    ADD CONSTRAINT web_order_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.web_order DROP CONSTRAINT web_order_pkey;
       public         	   thedronit    false    234         ?           2606    16530    web_reviews web_reviews_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.web_reviews
    ADD CONSTRAINT web_reviews_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.web_reviews DROP CONSTRAINT web_reviews_pkey;
       public         	   thedronit    false    236         ?           2606    16532    web_staff web_staff_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.web_staff
    ADD CONSTRAINT web_staff_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.web_staff DROP CONSTRAINT web_staff_pkey;
       public         	   thedronit    false    238         ?           1259    16533    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         	   thedronit    false    209         ?           1259    16534 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         	   thedronit    false    211         ?           1259    16535 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         	   thedronit    false    211         ?           1259    16536 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         	   thedronit    false    213         ?           1259    16537 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         	   thedronit    false    216         ?           1259    16538 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         	   thedronit    false    216         ?           1259    16539 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     ?   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         	   thedronit    false    219         ?           1259    16540 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         	   thedronit    false    219         ?           1259    16541     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         	   thedronit    false    215         ?           1259    16542 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         	   thedronit    false    221         ?           1259    16543 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         	   thedronit    false    221         ?           1259    16544 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         	   thedronit    false    227         ?           1259    16545 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         	   thedronit    false    227         ?           1259    16546     web_flowers_Category_id_84a7ec05    INDEX     c   CREATE INDEX "web_flowers_Category_id_84a7ec05" ON public.web_flowers USING btree ("Category_id");
 6   DROP INDEX public."web_flowers_Category_id_84a7ec05";
       public         	   thedronit    false    232         ?           2606    16547 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       	   thedronit    false    3275    211    213         ?           2606    16552 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       	   thedronit    false    3264    211    209         ?           2606    16557 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       	   thedronit    false    213    3300    223         ?           2606    16562 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       	   thedronit    false    209    3264    216         ?           2606    16567 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       	   thedronit    false    215    216    3277         ?           2606    16572 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       	   thedronit    false    3275    213    219                     2606    16577 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       	   thedronit    false    219    3277    215                    2606    16582 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       	   thedronit    false    221    223    3300                    2606    16587 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       	   thedronit    false    215    221    3277                    2606    16592 /   web_flowers web_flowers_Category_id_84a7ec05_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.web_flowers
    ADD CONSTRAINT "web_flowers_Category_id_84a7ec05_fk" FOREIGN KEY ("Category_id") REFERENCES public.web_category(id) DEFERRABLE INITIALLY DEFERRED;
 [   ALTER TABLE ONLY public.web_flowers DROP CONSTRAINT "web_flowers_Category_id_84a7ec05_fk";
       public       	   thedronit    false    230    3310    232                                                                                                                                                                                              3471.dat                                                                                            0000600 0004000 0002000 00000000002 14203514413 0014235 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              3473.dat                                                                                            0000600 0004000 0002000 00000000002 14203514413 0014237 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              3475.dat                                                                                            0000600 0004000 0002000 00000016661 14203514413 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (25, 'Can add Категории', 7, 'add_category');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (26, 'Can change Категории', 7, 'change_category');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (27, 'Can delete Категории', 7, 'delete_category');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (28, 'Can view Категории', 7, 'view_category');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (29, 'Can add Цветы', 8, 'add_flowers');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (30, 'Can change Цветы', 8, 'change_flowers');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (31, 'Can delete Цветы', 8, 'delete_flowers');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (32, 'Can view Цветы', 8, 'view_flowers');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (33, 'Can add Корзина пользователя (системное)', 9, 'add_basket');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (34, 'Can change Корзина пользователя (системное)', 9, 'change_basket');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (35, 'Can delete Корзина пользователя (системное)', 9, 'delete_basket');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (36, 'Can view Корзина пользователя (системное)', 9, 'view_basket');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (37, 'Can add Популярное', 10, 'add_popular');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (38, 'Can change Популярное', 10, 'change_popular');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (39, 'Can delete Популярное', 10, 'delete_popular');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (40, 'Can view Популярное', 10, 'view_popular');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (41, 'Can add Заказы', 11, 'add_order');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (42, 'Can change Заказы', 11, 'change_order');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (43, 'Can delete Заказы', 11, 'delete_order');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (44, 'Can view Заказы', 11, 'view_order');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (45, 'Can add Отзывы', 12, 'add_reviews');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (46, 'Can change Отзывы', 12, 'change_reviews');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (47, 'Can delete Отзывы', 12, 'delete_reviews');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (48, 'Can view Отзывы', 12, 'view_reviews');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (49, 'Can add Персонал', 13, 'add_staff');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (50, 'Can change Персонал', 13, 'change_staff');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (51, 'Can delete Персонал', 13, 'delete_staff');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (52, 'Can view Персонал', 13, 'view_staff');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (53, 'Can add Заявки на связь', 14, 'add_contactus');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (54, 'Can change Заявки на связь', 14, 'change_contactus');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (55, 'Can delete Заявки на связь', 14, 'delete_contactus');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (56, 'Can view Заявки на связь', 14, 'view_contactus');


                                                                               3477.dat                                                                                            0000600 0004000 0002000 00000000564 14203514413 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (1, 'pbkdf2_sha256$320000$3YLp1sibNdTViOKtXx3bjV$4gQ8R19HFcM5KgrbexQHpXG9nQqVwilPYgnxeD7YDOM=', '2022-02-17 00:00:32.361951+03', true, 'admin', '', '', 'admin@admin.admin', true, true, '2021-10-10 07:22:58.184482+03');


                                                                                                                                            3478.dat                                                                                            0000600 0004000 0002000 00000000002 14203514413 0014244 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              3481.dat                                                                                            0000600 0004000 0002000 00000000002 14203514413 0014236 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              3483.dat                                                                                            0000600 0004000 0002000 00000027706 14203514413 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (1, '2021-10-13 11:28:34.225+03', '1', 'Розы', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (2, '2021-10-13 16:04:01.846065+03', '1', 'Роза 1', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (3, '2021-10-14 09:12:11.681091+03', '1', 'Роза 1', 2, '[{"changed": {"fields": ["\u041f\u043e\u0441\u0442\u0435\u0440"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (4, '2021-10-16 08:42:56.170481+03', '11', '11', 3, '', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (5, '2021-10-16 08:42:56.190487+03', '10', '10', 3, '', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (6, '2021-10-16 08:42:56.191488+03', '9', '9', 3, '', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (7, '2021-10-16 08:42:56.192488+03', '8', '8', 3, '', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (8, '2021-10-16 08:42:56.193488+03', '7', '7', 3, '', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (9, '2021-10-16 08:42:56.193488+03', '6', '6', 3, '', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (10, '2021-10-16 08:42:56.194488+03', '5', '5', 3, '', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (11, '2021-10-16 08:42:56.195489+03', '4', '4', 3, '', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (12, '2021-10-16 08:42:56.196489+03', '3', '3', 3, '', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (13, '2021-10-16 08:42:56.196489+03', '2', '2', 3, '', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (14, '2021-10-16 08:48:10.750351+03', '1', '1', 2, '[{"changed": {"fields": ["Product value"]}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (15, '2021-10-16 08:50:52.382262+03', '1', '1', 2, '[{"changed": {"fields": ["Product value"]}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (16, '2021-10-16 08:51:01.725704+03', '1', '1', 2, '[{"changed": {"fields": ["Product value"]}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (17, '2021-10-16 08:51:07.995901+03', '1', '1', 2, '[{"changed": {"fields": ["Product value"]}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (18, '2021-10-16 10:05:53.877136+03', '1', '1', 3, '', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (19, '2021-10-16 10:06:29.224131+03', '12', '12', 3, '', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (20, '2021-10-16 10:06:44.046474+03', '14', '14', 3, '', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (21, '2021-10-16 10:06:44.051475+03', '13', '13', 3, '', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (22, '2021-10-16 10:08:21.531184+03', '17', '17', 3, '', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (23, '2021-10-16 10:08:21.536185+03', '16', '16', 3, '', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (24, '2021-10-16 10:08:21.537185+03', '15', '15', 3, '', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (25, '2021-10-16 12:35:48.179149+03', '2', 'Корзины', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (26, '2021-10-16 12:42:08.75472+03', '2', 'Корзина номер 1', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (27, '2021-10-16 12:47:12.042272+03', '19', '19', 2, '[{"changed": {"fields": ["Product value"]}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (28, '2021-10-16 15:11:02.147745+03', '3', 'Розы 3', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (29, '2021-10-21 07:57:09.40306+03', '23', '23', 3, '', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (30, '2021-10-21 07:57:09.456072+03', '22', '22', 3, '', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (31, '2021-10-21 07:57:22.727069+03', '30', '30', 3, '', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (32, '2021-10-21 07:57:22.73307+03', '29', '29', 3, '', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (33, '2021-10-21 07:57:22.73407+03', '25', '25', 3, '', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (34, '2021-10-21 08:23:54.618865+03', '36', '36', 3, '', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (35, '2021-10-21 08:23:54.621865+03', '35', '35', 3, '', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (36, '2021-10-21 08:23:54.622865+03', '34', '34', 3, '', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (37, '2021-10-21 08:23:54.623866+03', '33', '33', 3, '', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (38, '2021-10-21 08:23:54.624866+03', '32', '32', 3, '', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (39, '2021-10-21 08:23:54.624866+03', '31', '31', 3, '', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (40, '2021-10-21 10:17:49.924976+03', '1', 'Роза 1', 1, '[{"added": {}}]', 10, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (41, '2021-10-21 10:30:17.660595+03', '3', 'Розы 3', 2, '[{"changed": {"fields": ["\u0414\u043e\u043f\u043e\u043b\u043d\u0438\u0442\u0435\u043b\u044c\u043d\u043e"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (42, '2021-10-21 10:39:29.516125+03', '2', 'Корзина номер 1', 2, '[{"changed": {"fields": ["\u0414\u043e\u043f\u043e\u043b\u043d\u0438\u0442\u0435\u043b\u044c\u043d\u043e"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (43, '2021-10-21 10:39:36.719752+03', '1', 'Роза 1', 2, '[{"changed": {"fields": ["\u0414\u043e\u043f\u043e\u043b\u043d\u0438\u0442\u0435\u043b\u044c\u043d\u043e"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (44, '2021-10-24 10:54:38.788403+03', '1', 'P2172854562 | Обрабатывается', 3, '', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (45, '2021-10-24 12:13:07.259538+03', '1', '1', 1, '[{"added": {}}]', 12, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (46, '2021-10-24 12:13:30.117204+03', '2', '2', 1, '[{"added": {}}]', 12, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (47, '2021-10-24 12:43:41.308394+03', '3', '3', 1, '[{"added": {}}]', 12, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (48, '2021-10-24 12:48:23.401452+03', '4', '4', 1, '[{"added": {}}]', 12, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (49, '2021-10-24 13:10:48.261058+03', '5', '5', 1, '[{"added": {}}]', 12, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (50, '2021-10-24 13:13:27.69229+03', '6', '6', 1, '[{"added": {}}]', 12, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (51, '2022-01-25 12:13:07.436528+03', '3', 'Тест', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (52, '2022-01-27 17:59:41.89985+03', '1', 'Розы', 2, '[{"changed": {"fields": ["\u041e\u0442\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u0435 \u0432 \u043c\u0435\u043d\u044e"]}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (53, '2022-01-28 15:53:12.087589+03', '1', 'Наталия', 1, '[{"added": {}}]', 13, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (54, '2022-01-30 22:31:21.198267+03', '2', 'Корзины', 2, '[{"changed": {"fields": ["\u041e\u0442\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u0435 \u0432 \u043c\u0435\u043d\u044e"]}}]', 7, 1);


                                                          3485.dat                                                                                            0000600 0004000 0002000 00000002443 14203514413 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.django_content_type (id, app_label, model) VALUES (1, 'admin', 'logentry');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (2, 'auth', 'permission');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (3, 'auth', 'group');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (4, 'auth', 'user');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (6, 'sessions', 'session');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (7, 'web', 'category');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (8, 'web', 'flowers');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (9, 'web', 'basket');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (10, 'web', 'popular');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (11, 'web', 'order');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (12, 'web', 'reviews');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (13, 'web', 'staff');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (14, 'web', 'contactus');


                                                                                                                                                                                                                             3487.dat                                                                                            0000600 0004000 0002000 00000011505 14203514413 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.django_migrations (id, app, name, applied) VALUES (1, 'contenttypes', '0001_initial', '2021-10-10 07:22:30.026437+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (2, 'auth', '0001_initial', '2021-10-10 07:22:30.351514+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (3, 'admin', '0001_initial', '2021-10-10 07:22:30.889635+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2021-10-10 07:22:30.967653+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2021-10-10 07:22:30.987658+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2021-10-10 07:22:31.094682+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2021-10-10 07:22:31.103684+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (8, 'auth', '0003_alter_user_email_max_length', '2021-10-10 07:22:31.12269+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (9, 'auth', '0004_alter_user_username_opts', '2021-10-10 07:22:31.138692+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (10, 'auth', '0005_alter_user_last_login_null', '2021-10-10 07:22:31.148695+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (11, 'auth', '0006_require_contenttypes_0002', '2021-10-10 07:22:31.155696+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2021-10-10 07:22:31.167699+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (13, 'auth', '0008_alter_user_username_max_length', '2021-10-10 07:22:31.257719+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2021-10-10 07:22:31.268722+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (15, 'auth', '0010_alter_group_name_max_length', '2021-10-10 07:22:31.289726+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (16, 'auth', '0011_update_proxy_permissions', '2021-10-10 07:22:31.300728+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2021-10-10 07:22:31.315732+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (18, 'sessions', '0001_initial', '2021-10-10 07:22:31.393753+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (19, 'web', '0001_initial', '2021-10-13 11:27:36.831557+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (20, 'web', '0002_flowers', '2021-10-13 16:02:16.4591+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (21, 'web', '0003_flowers_image', '2021-10-13 16:05:17.386977+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (22, 'web', '0004_basket', '2021-10-16 08:14:48.161652+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (23, 'web', '0005_auto_20211021_1717', '2021-10-21 10:17:07.777177+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (24, 'web', '0006_auto_20211021_1723', '2021-10-21 10:23:54.201127+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (25, 'web', '0007_auto_20211021_1729', '2021-10-21 10:29:52.039273+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (26, 'web', '0008_order', '2021-10-22 12:47:45.478451+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (27, 'web', '0009_auto_20211022_1952', '2021-10-22 12:52:09.649856+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (28, 'web', '0010_order_paymant', '2021-10-24 09:14:08.75539+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (29, 'web', '0011_auto_20211024_1615', '2021-10-24 09:15:38.747761+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (30, 'web', '0012_reviews', '2021-10-24 12:12:01.691947+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (31, 'web', '0013_category_showinmenu', '2022-01-27 17:57:50.955939+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (32, 'web', '0014_staff_alter_category_showinmenu', '2022-01-28 15:35:33.699179+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (33, 'web', '0015_alter_basket_id_alter_category_id_alter_flowers_id_and_more', '2022-01-28 15:37:43.143119+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (34, 'web', '0016_contactus', '2022-01-31 16:04:05.862406+03');


                                                                                                                                                                                           3489.dat                                                                                            0000600 0004000 0002000 00000013730 14203514413 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('b7a359a82ttlusiznft6i77smlwzhipa', '.eJxVjEEOwiAQRe_C2hDoQKEu3XsGMswMtmpKUtqV8e7apAvd_vfef6mE2zqmrcmSJlZnZdXpd8tID5l3wHecb1VTnddlynpX9EGbvlaW5-Vw_w5GbOO3dgjOEuSuH3xh9EQgznuhAKXYPoANnTUmE0vg4gwwDIKlszzEiJHV-wPm-jgt:1mZQMn:XbOphfdQTPh8H3PEfYGGVGw70QQaCK5amWD1ETyVnGc', '2021-10-24 07:23:17.093993+03');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('3ry3aocs96b0ly3zxvx5lnluk58bym5a', '.eJxVjEEOwiAQRe_C2hDoQKEu3XsGMswMtmpKUtqV8e7apAvd_vfef6mE2zqmrcmSJlZnZdXpd8tID5l3wHecb1VTnddlynpX9EGbvlaW5-Vw_w5GbOO3dgjOEuSuH3xh9EQgznuhAKXYPoANnTUmE0vg4gwwDIKlszzEiJHV-wPm-jgt:1mbc2L:hl4HrikPxtJ5VPTt-1DSQT0wDaWw84PaMm6Uci5d2ko', '2021-10-30 08:15:13.312323+03');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('ja45af6naw8jloqfugng34ifr7dbamc8', 'e30:1mbvdv:0v56AXjt8PhNFYOQpDLH7DRGHPBkP9drL-w2hzOQ-Cs', '2021-10-31 05:11:19.440676+03');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('j5a5c9d38uwf943akc55ktrldtqnk697', 'e30:1mbvdy:YMYMbuc-1WjDPTFz2gto6ICNva0tNfv8sHW_E42zoP4', '2021-10-31 05:11:22.091743+03');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('k2jdun528s6aufeyzrk2ze3dedgfjtw7', 'e30:1mbve9:U9qjtfkruR2lenWiIdfkQuEQVMnti_evD72OAd5dPcw', '2021-10-31 05:11:33.971948+03');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('1gr74xrxzusmnw89vu2yxhg2s8oko0es', 'e30:1mdUy7:RS9gs91iZZ9MYXZa7pv6ibrs7WPP6G3foiv7zG6sD4s', '2021-11-04 13:06:39.736734+03');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('a47zfsb12unotpemvee30f0ojp2ow8mg', 'e30:1mdUyK:3JIpqhxf6DFLZY6YsuGOeil97hXWkLE_REY6_5CS5Sc', '2021-11-04 13:06:52.392391+03');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('xxq4g39llwjmms458w2tnokgiu50jrs1', 'e30:1mhnHv:bqnN3ZuWmKeqIEcy-XXwTKGeoN0n_xXBztGKnF-tfZM', '2021-11-16 09:28:51.956172+03');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('gskva7jcql2w2me8eu66fzd95romshco', '.eJxVjEEOwiAQRe_C2hAoMFNcuvcMZIBBqoYmpV0Z765NutDtf-_9lwi0rTVsnZcwZXEWWpx-t0jpwW0H-U7tNss0t3WZotwVedAur3Pm5-Vw_w4q9fqtrU5QCpDPZkRURitkGrJjZ9B7YwHRaashl-IQmA0pS7GAcQOQG1G8P8TZNvo:1nCHqA:3Au-hyd2GIF-p3YNIJQBTSLmxQSqBVivop4xonqh5a0', '2022-02-08 12:10:14.889845+03');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('0lxc60vntd3vd7bt9kj9i8wxinnk38df', '.eJxVjEEOwiAQRe_C2hAoMFNcuvcMZIBBqoYmpV0Z765NutDtf-_9lwi0rTVsnZcwZXEWWpx-t0jpwW0H-U7tNss0t3WZotwVedAur3Pm5-Vw_w4q9fqtrU5QCpDPZkRURitkGrJjZ9B7YwHRaashl-IQmA0pS7GAcQOQG1G8P8TZNvo:1nD6E3:tCOSyyXY_iJyDcQq4qr66s-tusy3qAAPLhjBAWy2Mrg', '2022-02-10 17:58:15.863633+03');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('15xr19ah5gk4antbvecc4hzydn10wafx', 'e30:1nEFkx:flGZqzBSJwDvIVG2Fifnhhmph8Lb_ucr4cqZScXPuaQ', '2022-02-13 22:20:59.126397+03');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('p1rbsdud4ekezzrocgy67woxgcfp4ttf', 'e30:1nEFky:aycI3lsANn-ZgjYVpiKaDVwG3qHSG1_rcfnOq1V3W4w', '2022-02-13 22:21:00.896913+03');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('4kkut2ycdqlamw3t5qs6lfzjc113z5sp', 'e30:1nEFl6:tOHduW4jsCYJi5fIxC_HBrnexDhW9_qkU1HJcziZMo4', '2022-02-13 22:21:08.394063+03');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('lnozrsoejfgcnx0o3zt9jh3xle4eklwo', 'e30:1nEFnI:s5JwYOV8wBFlKf2S_ArZjsGOjCSVu_8mP1LEopsFTKY', '2022-02-13 22:23:24.21089+03');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('9ir6fp9si7r2tk95arfuiw2ms789w7gj', '.eJxVjEEOwiAQRe_C2hAoMFNcuvcMZIBBqoYmpV0Z765NutDtf-_9lwi0rTVsnZcwZXEWWpx-t0jpwW0H-U7tNss0t3WZotwVedAur3Pm5-Vw_w4q9fqtrU5QCpDPZkRURitkGrJjZ9B7YwHRaashl-IQmA0pS7GAcQOQG1G8P8TZNvo:1nEFul:VFh-fONHw6VvsFBcB4h7PwwHR-WzJz8ieo_LL0ZApSg', '2022-02-13 22:31:07.860041+03');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('engbsw6gv935p3idefbpc43nlcxmqjye', 'e30:1nEVQJ:nTCDrbaK41jtq18wqAw5RUiTe1to3th4DIkNBqIqN7Y', '2022-02-14 15:04:43.088087+03');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('oswbd1n2qxqh5my8sap2qszgp89wf3og', 'e30:1nEVQL:MkSAEQRwjrqna7-xtEBpaJfR9KDnvr9ba18e7VXtxVo', '2022-02-14 15:04:45.917545+03');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('6uo328r142j5n26zhfow17rgin1k0obs', 'e30:1nEVR1:ZRd_5Grj8opOFPd9Qs-Hd5QWwIiPcE5MN6sIWJU_lsg', '2022-02-14 15:05:27.734281+03');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('96cz0fmud83sbp3xbarr00jf4s3pdpfc', 'e30:1nEWFj:1kirn5qObOMINZXOOK98Z91irbXFvd-_SOuYuP0gHvY', '2022-02-14 15:57:51.807348+03');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('sed9s3atdxthfs3pywy3vks09yjd2lz6', 'e30:1nEabG:vJUI7se0ojXiZTu8yqRV5iUcFme1LGwGZ-WyI4Ab3j4', '2022-02-14 20:36:22.700072+03');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('76a0q8tmb07lhmgzppqqaezf383z31db', 'e30:1nEabP:eK9fhj_sP9HA3qKbCgnnrQhWsxv_KwFl2i6F8nw93JY', '2022-02-14 20:36:31.87083+03');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('j3fr1bh23hdv9ka8wrmjd95r5v5ylgi4', 'e30:1nEacW:rIrMwVKiL-EvFvfRBvC4Sg3B6r0X6nKZagX05ERy5o4', '2022-02-14 20:37:40.821653+03');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('n0tntlem6qfyq82xlmprjgntrze0nwjf', 'e30:1nEaeg:68upYhmG0ZcejWYnra4ajbemMo0wF3B-SNbk8i3xR3s', '2022-02-14 20:39:54.655249+03');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('77so0fy01pcvgfb0pb1x5toi89podv8k', '.eJxVjEEOwiAQRe_C2hAoMFNcuvcMZIBBqoYmpV0Z765NutDtf-_9lwi0rTVsnZcwZXEWWpx-t0jpwW0H-U7tNss0t3WZotwVedAur3Pm5-Vw_w4q9fqtrU5QCpDPZkRURitkGrJjZ9B7YwHRaashl-IQmA0pS7GAcQOQG1G8P8TZNvo:1nKRPc:aJnt_t7WJUjrWACQvn9JQpzZD8xWWNhZp33CecmIXdQ', '2022-03-03 00:00:32.366954+03');


                                        3490.dat                                                                                            0000600 0004000 0002000 00000003710 14203514413 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.web_basket (id, session_key, "сategory_id", product_id, product_value) VALUES (42, '3ry3aocs96b0ly3zxvx5lnluk58bym5a', '1', '1', 1);
INSERT INTO public.web_basket (id, session_key, "сategory_id", product_id, product_value) VALUES (43, 'x7lsqlrtclr2fuu1a86le52p9s9x5kc1', '1', '1', 1);
INSERT INTO public.web_basket (id, session_key, "сategory_id", product_id, product_value) VALUES (57, '86zx6066hzkbrn0uw13z9lxyxts2cega', '2', '2', 12);
INSERT INTO public.web_basket (id, session_key, "сategory_id", product_id, product_value) VALUES (59, 'xxq4g39llwjmms458w2tnokgiu50jrs1', '1', '1', 1);
INSERT INTO public.web_basket (id, session_key, "сategory_id", product_id, product_value) VALUES (63, '47mr35trasyvhsfjreyd0g8nhhy98rxx', '2', '2', 1);
INSERT INTO public.web_basket (id, session_key, "сategory_id", product_id, product_value) VALUES (72, 'x5422m6mespq0e5mmh7wim2aa3hpcp4r', '1', '3', 2);
INSERT INTO public.web_basket (id, session_key, "сategory_id", product_id, product_value) VALUES (73, 'x5422m6mespq0e5mmh7wim2aa3hpcp4r', '2', '2', 1);
INSERT INTO public.web_basket (id, session_key, "сategory_id", product_id, product_value) VALUES (74, '4kkut2ycdqlamw3t5qs6lfzjc113z5sp', '1', '3', 1);
INSERT INTO public.web_basket (id, session_key, "сategory_id", product_id, product_value) VALUES (82, '9ir6fp9si7r2tk95arfuiw2ms789w7gj', '1', '1', 1);
INSERT INTO public.web_basket (id, session_key, "сategory_id", product_id, product_value) VALUES (81, '9ir6fp9si7r2tk95arfuiw2ms789w7gj', '1', '3', 3);
INSERT INTO public.web_basket (id, session_key, "сategory_id", product_id, product_value) VALUES (84, 'tu6mbaihnlsdzuo0f827jh62cl9bewsp', '2', '2', 1);
INSERT INTO public.web_basket (id, session_key, "сategory_id", product_id, product_value) VALUES (83, 'tu6mbaihnlsdzuo0f827jh62cl9bewsp', '1', '1', 2);
INSERT INTO public.web_basket (id, session_key, "сategory_id", product_id, product_value) VALUES (85, '77so0fy01pcvgfb0pb1x5toi89podv8k', '2', '2', 1);


                                                        3492.dat                                                                                            0000600 0004000 0002000 00000000701 14203514413 0014246 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.web_category (id, "Name", "Image", "ShowInMenu") VALUES (3, 'Тест', 'category/p3.jpg', '1');
INSERT INTO public.web_category (id, "Name", "Image", "ShowInMenu") VALUES (1, 'Розы', 'category/rozy-rozovye-krupnym-planom.jpg', 'Отображать');
INSERT INTO public.web_category (id, "Name", "Image", "ShowInMenu") VALUES (2, 'Корзины', 'category/539835fc73e572812a4eb5756e0c031d.jpg', 'Отображать');


                                                               3503.dat                                                                                            0000600 0004000 0002000 00000000421 14203514413 0014236 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.web_contactus (id, "Name", "Phone", "Email", "Message") VALUES (1, 'tttest', '8880', 'dfbnm@vbnm.j', '1337');
INSERT INTO public.web_contactus (id, "Name", "Phone", "Email", "Message") VALUES (2, 'test', '88005553535', 'andreykae28@gmail.com', '123');


                                                                                                                                                                                                                                               3494.dat                                                                                            0000600 0004000 0002000 00000001603 14203514413 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.web_flowers (id, "Name", "Components", "BuildTime", "About", "Price", "Category_id", "Image", "Additionally") VALUES (3, 'Розы 3', '3 красивые розы', '2 минуты', 'Хоть на фото их больше, их все равно 3)', 210, 1, 'flowers/3-450d47203a0629039b448e27dcbeee38.jpg', 'Популярно');
INSERT INTO public.web_flowers (id, "Name", "Components", "BuildTime", "About", "Price", "Category_id", "Image", "Additionally") VALUES (2, 'Корзина номер 1', '-', '-', '-', 200, 2, 'flowers/unnamed.jpg', 'Популярно');
INSERT INTO public.web_flowers (id, "Name", "Components", "BuildTime", "About", "Price", "Category_id", "Image", "Additionally") VALUES (1, 'Роза 1', '1 роза', '1 минута', 'Дешево и приятно', 70, 1, 'flowers/61d7d0cb-3a84-43d1-a11b-d73cfc973751.jpg', 'Популярно');


                                                                                                                             3496.dat                                                                                            0000600 0004000 0002000 00000012467 14203514413 0014266 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.web_order (id, "Code", "Phone", "Email", "Order", "Delivery", "Address", "Price", "Status", "Name", "Paymant") VALUES (2, 'P1334488973', '1', '1', '1) Роза 1 | Кол-во: 1 | За один: 70 | Цена: 70
2) Корзина номер 1 | Кол-во: 1 | За один: 200 | Цена: 200
', 'Самовывоз', '', 270, 'Обрабатывается', '1', 'Наличный расчет');
INSERT INTO public.web_order (id, "Code", "Phone", "Email", "Order", "Delivery", "Address", "Price", "Status", "Name", "Paymant") VALUES (3, 'P5930860728', '3', '2', '1) Роза 1 | Кол-во: 3 | За один: 70 | Цена: 210
', 'Самовывоз', '', 210, 'Обрабатывается', '1', 'Наличный расчет');
INSERT INTO public.web_order (id, "Code", "Phone", "Email", "Order", "Delivery", "Address", "Price", "Status", "Name", "Paymant") VALUES (4, 'P3417964459', '123123', '123123', '1) Роза 1 | Кол-во: 1 | За один: 70 | Цена: 70
', 'Самовывоз', '', 70, 'Обрабатывается', '123123', 'Наличный расчет');
INSERT INTO public.web_order (id, "Code", "Phone", "Email", "Order", "Delivery", "Address", "Price", "Status", "Name", "Paymant") VALUES (5, 'P2264307257', '1233', '1233', '1) Роза 1 | Кол-во: 1 | За один: 70 | Цена: 70
', 'Самовывоз', '', 70, 'Обрабатывается', '1233', 'Наличный расчет');
INSERT INTO public.web_order (id, "Code", "Phone", "Email", "Order", "Delivery", "Address", "Price", "Status", "Name", "Paymant") VALUES (6, 'P5356011150', '1', '1', '1) Корзина номер 1 | Кол-во: 1 | За один: 200 | Цена: 200
', 'Самовывоз', '', 200, 'Обрабатывается', '1', 'Наличный расчет');
INSERT INTO public.web_order (id, "Code", "Phone", "Email", "Order", "Delivery", "Address", "Price", "Status", "Name", "Paymant") VALUES (7, 'P5267808331', '1', '1', '1) Корзина номер 1 | Кол-во: 1 | За один: 200 | Цена: 200
', 'Самовывоз', '', 200, 'Обрабатывается', '1', 'Наличный расчет');
INSERT INTO public.web_order (id, "Code", "Phone", "Email", "Order", "Delivery", "Address", "Price", "Status", "Name", "Paymant") VALUES (8, 'P7151045056', '1', '1', '1) Корзина номер 1 | Кол-во: 1 | За один: 200 | Цена: 200
', 'Самовывоз', '', 200, 'Обрабатывается', '1', 'Наличный расчет');
INSERT INTO public.web_order (id, "Code", "Phone", "Email", "Order", "Delivery", "Address", "Price", "Status", "Name", "Paymant") VALUES (9, 'P3829179754', '1', '1', '1) Корзина номер 1 | Кол-во: 1 | За один: 200 | Цена: 200
', 'Самовывоз', '', 200, 'Обрабатывается', '1', 'Наличный расчет');
INSERT INTO public.web_order (id, "Code", "Phone", "Email", "Order", "Delivery", "Address", "Price", "Status", "Name", "Paymant") VALUES (10, 'P4684124984', '1', '1', '1) Корзина номер 1 | Кол-во: 1 | За один: 200 | Цена: 200
', 'Самовывоз', '', 200, 'Обрабатывается', '1', 'Наличный расчет');
INSERT INTO public.web_order (id, "Code", "Phone", "Email", "Order", "Delivery", "Address", "Price", "Status", "Name", "Paymant") VALUES (11, 'P5649513172', '3', '2', '1) Роза 1 | Кол-во: 3 | За один: 70 | Цена: 210
2) Розы 3 | Кол-во: 1 | За один: 210 | Цена: 210
', 'Самовывоз', '', 420, 'Обрабатывается', '1', 'Наличный расчет');
INSERT INTO public.web_order (id, "Code", "Phone", "Email", "Order", "Delivery", "Address", "Price", "Status", "Name", "Paymant") VALUES (12, 'D5712653423', '88000000000', 'email@mail.ru', '1) Роза 1 | Кол-во: 2 | За один: 70 | Цена: 140
', 'Доставка', 'Улица 01, 01, Текст, 01, 01', 140, 'Обрабатывается', 'Андрей', 'Наличный расчет');
INSERT INTO public.web_order (id, "Code", "Phone", "Email", "Order", "Delivery", "Address", "Price", "Status", "Name", "Paymant") VALUES (13, 'P7197897197', '88005553535', 'Mail@mail.ru', '1) Роза 1 | Кол-во: 1 | За один: 70 | Цена: 70
2) Корзина номер 1 | Кол-во: 1 | За один: 200 | Цена: 200
', 'Самовывоз', '', 270, 'Обрабатывается', 'Андрей телефон', 'Наличный расчет');
INSERT INTO public.web_order (id, "Code", "Phone", "Email", "Order", "Delivery", "Address", "Price", "Status", "Name", "Paymant") VALUES (14, 'P5065368071', '88005553535', 'andreykae28@gmail.com', '1) Розы 3 | Кол-во: 1 | За один: 210 | Цена: 210
2) Роза 1 | Кол-во: 1 | За один: 70 | Цена: 70
', 'Самовывоз', '', 280, 'Обрабатывается', 'Андрей', 'Наличный расчет');
INSERT INTO public.web_order (id, "Code", "Phone", "Email", "Order", "Delivery", "Address", "Price", "Status", "Name", "Paymant") VALUES (15, 'P3446828365', '88005553535', 'andreykae28@gmail.com', '1) Розы 3 | Кол-во: 3 | За один: 210 | Цена: 630
2) Роза 1 | Кол-во: 1 | За один: 70 | Цена: 70
', 'Самовывоз', '', 700, 'Обрабатывается', 'Андрей', 'Наличный расчет');


                                                                                                                                                                                                         3498.dat                                                                                            0000600 0004000 0002000 00000000700 14203514413 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.web_reviews (id, "Image") VALUES (1, 'reviews/1.jpg');
INSERT INTO public.web_reviews (id, "Image") VALUES (2, 'reviews/war.jpg');
INSERT INTO public.web_reviews (id, "Image") VALUES (3, 'reviews/2.jpg');
INSERT INTO public.web_reviews (id, "Image") VALUES (4, 'reviews/3.jpg');
INSERT INTO public.web_reviews (id, "Image") VALUES (5, 'reviews/4.jpg');
INSERT INTO public.web_reviews (id, "Image") VALUES (6, 'reviews/5.jpg');


                                                                3500.dat                                                                                            0000600 0004000 0002000 00000000204 14203514413 0014232 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.web_staff (id, "Name", "Image", "Role") VALUES (1, 'Наталия', 'staff/nat.jpg', 'Основатель');


                                                                                                                                                                                                                                                                                                                                                                                            restore.sql                                                                                         0000600 0004000 0002000 00000103362 14203514413 0015366 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 14.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE floplace;
--
-- Name: floplace; Type: DATABASE; Schema: -; Owner: thedronit
--

CREATE DATABASE floplace WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';


ALTER DATABASE floplace OWNER TO thedronit;

\connect floplace

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO thedronit;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO thedronit;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO thedronit;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO thedronit;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO thedronit;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO thedronit;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO thedronit;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO thedronit;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO thedronit;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO thedronit;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO thedronit;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO thedronit;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO thedronit;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO thedronit;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO thedronit;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO thedronit;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO thedronit;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO thedronit;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO thedronit;

--
-- Name: web_basket; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.web_basket (
    id bigint NOT NULL,
    session_key character varying(120) NOT NULL,
    "сategory_id" character varying(120) NOT NULL,
    product_id character varying(120) NOT NULL,
    product_value integer NOT NULL
);


ALTER TABLE public.web_basket OWNER TO thedronit;

--
-- Name: web_basket_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.web_basket_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_basket_id_seq OWNER TO thedronit;

--
-- Name: web_basket_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.web_basket_id_seq OWNED BY public.web_basket.id;


--
-- Name: web_category; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.web_category (
    id bigint NOT NULL,
    "Name" character varying(50) NOT NULL,
    "Image" character varying(100) NOT NULL,
    "ShowInMenu" character varying(50) NOT NULL
);


ALTER TABLE public.web_category OWNER TO thedronit;

--
-- Name: web_category_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.web_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_category_id_seq OWNER TO thedronit;

--
-- Name: web_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.web_category_id_seq OWNED BY public.web_category.id;


--
-- Name: web_contactus; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.web_contactus (
    id bigint NOT NULL,
    "Name" character varying(50) NOT NULL,
    "Phone" character varying(50) NOT NULL,
    "Email" character varying(50) NOT NULL,
    "Message" text NOT NULL
);


ALTER TABLE public.web_contactus OWNER TO thedronit;

--
-- Name: web_contactus_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.web_contactus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_contactus_id_seq OWNER TO thedronit;

--
-- Name: web_contactus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.web_contactus_id_seq OWNED BY public.web_contactus.id;


--
-- Name: web_flowers; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.web_flowers (
    id bigint NOT NULL,
    "Name" character varying(50) NOT NULL,
    "Components" text NOT NULL,
    "BuildTime" character varying(50) NOT NULL,
    "About" text NOT NULL,
    "Price" integer NOT NULL,
    "Category_id" bigint,
    "Image" character varying(100) NOT NULL,
    "Additionally" character varying(50) NOT NULL
);


ALTER TABLE public.web_flowers OWNER TO thedronit;

--
-- Name: web_flowers_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.web_flowers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_flowers_id_seq OWNER TO thedronit;

--
-- Name: web_flowers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.web_flowers_id_seq OWNED BY public.web_flowers.id;


--
-- Name: web_order; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.web_order (
    id bigint NOT NULL,
    "Code" character varying(120) NOT NULL,
    "Phone" character varying(120) NOT NULL,
    "Email" character varying(120) NOT NULL,
    "Order" text NOT NULL,
    "Delivery" character varying(50) NOT NULL,
    "Address" character varying(120) NOT NULL,
    "Price" integer NOT NULL,
    "Status" character varying(50) NOT NULL,
    "Name" character varying(120) NOT NULL,
    "Paymant" character varying(50) NOT NULL
);


ALTER TABLE public.web_order OWNER TO thedronit;

--
-- Name: web_order_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.web_order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_order_id_seq OWNER TO thedronit;

--
-- Name: web_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.web_order_id_seq OWNED BY public.web_order.id;


--
-- Name: web_reviews; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.web_reviews (
    id bigint NOT NULL,
    "Image" character varying(100) NOT NULL
);


ALTER TABLE public.web_reviews OWNER TO thedronit;

--
-- Name: web_reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.web_reviews_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_reviews_id_seq OWNER TO thedronit;

--
-- Name: web_reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.web_reviews_id_seq OWNED BY public.web_reviews.id;


--
-- Name: web_staff; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.web_staff (
    id bigint NOT NULL,
    "Name" character varying(50) NOT NULL,
    "Image" character varying(100) NOT NULL,
    "Role" character varying(50) NOT NULL
);


ALTER TABLE public.web_staff OWNER TO thedronit;

--
-- Name: web_staff_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.web_staff_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_staff_id_seq OWNER TO thedronit;

--
-- Name: web_staff_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.web_staff_id_seq OWNED BY public.web_staff.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: web_basket id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.web_basket ALTER COLUMN id SET DEFAULT nextval('public.web_basket_id_seq'::regclass);


--
-- Name: web_category id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.web_category ALTER COLUMN id SET DEFAULT nextval('public.web_category_id_seq'::regclass);


--
-- Name: web_contactus id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.web_contactus ALTER COLUMN id SET DEFAULT nextval('public.web_contactus_id_seq'::regclass);


--
-- Name: web_flowers id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.web_flowers ALTER COLUMN id SET DEFAULT nextval('public.web_flowers_id_seq'::regclass);


--
-- Name: web_order id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.web_order ALTER COLUMN id SET DEFAULT nextval('public.web_order_id_seq'::regclass);


--
-- Name: web_reviews id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.web_reviews ALTER COLUMN id SET DEFAULT nextval('public.web_reviews_id_seq'::regclass);


--
-- Name: web_staff id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.web_staff ALTER COLUMN id SET DEFAULT nextval('public.web_staff_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: thedronit
--

\i $$PATH$$/3471.dat

--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: thedronit
--

\i $$PATH$$/3473.dat

--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: thedronit
--

\i $$PATH$$/3475.dat

--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: thedronit
--

\i $$PATH$$/3477.dat

--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: thedronit
--

\i $$PATH$$/3478.dat

--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: thedronit
--

\i $$PATH$$/3481.dat

--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: thedronit
--

\i $$PATH$$/3483.dat

--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: thedronit
--

\i $$PATH$$/3485.dat

--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: thedronit
--

\i $$PATH$$/3487.dat

--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: thedronit
--

\i $$PATH$$/3489.dat

--
-- Data for Name: web_basket; Type: TABLE DATA; Schema: public; Owner: thedronit
--

\i $$PATH$$/3490.dat

--
-- Data for Name: web_category; Type: TABLE DATA; Schema: public; Owner: thedronit
--

\i $$PATH$$/3492.dat

--
-- Data for Name: web_contactus; Type: TABLE DATA; Schema: public; Owner: thedronit
--

\i $$PATH$$/3503.dat

--
-- Data for Name: web_flowers; Type: TABLE DATA; Schema: public; Owner: thedronit
--

\i $$PATH$$/3494.dat

--
-- Data for Name: web_order; Type: TABLE DATA; Schema: public; Owner: thedronit
--

\i $$PATH$$/3496.dat

--
-- Data for Name: web_reviews; Type: TABLE DATA; Schema: public; Owner: thedronit
--

\i $$PATH$$/3498.dat

--
-- Data for Name: web_staff; Type: TABLE DATA; Schema: public; Owner: thedronit
--

\i $$PATH$$/3500.dat

--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 56, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 54, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 14, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 34, true);


--
-- Name: web_basket_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.web_basket_id_seq', 85, true);


--
-- Name: web_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.web_category_id_seq', 3, true);


--
-- Name: web_contactus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.web_contactus_id_seq', 2, true);


--
-- Name: web_flowers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.web_flowers_id_seq', 3, true);


--
-- Name: web_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.web_order_id_seq', 15, true);


--
-- Name: web_reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.web_reviews_id_seq', 6, true);


--
-- Name: web_staff_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.web_staff_id_seq', 1, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: web_basket web_basket_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.web_basket
    ADD CONSTRAINT web_basket_pkey PRIMARY KEY (id);


--
-- Name: web_category web_category_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.web_category
    ADD CONSTRAINT web_category_pkey PRIMARY KEY (id);


--
-- Name: web_contactus web_contactus_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.web_contactus
    ADD CONSTRAINT web_contactus_pkey PRIMARY KEY (id);


--
-- Name: web_flowers web_flowers_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.web_flowers
    ADD CONSTRAINT web_flowers_pkey PRIMARY KEY (id);


--
-- Name: web_order web_order_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.web_order
    ADD CONSTRAINT web_order_pkey PRIMARY KEY (id);


--
-- Name: web_reviews web_reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.web_reviews
    ADD CONSTRAINT web_reviews_pkey PRIMARY KEY (id);


--
-- Name: web_staff web_staff_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.web_staff
    ADD CONSTRAINT web_staff_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: web_flowers_Category_id_84a7ec05; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX "web_flowers_Category_id_84a7ec05" ON public.web_flowers USING btree ("Category_id");


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: web_flowers web_flowers_Category_id_84a7ec05_fk; Type: FK CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.web_flowers
    ADD CONSTRAINT "web_flowers_Category_id_84a7ec05_fk" FOREIGN KEY ("Category_id") REFERENCES public.web_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              