PGDMP     0                    y            agencia_turismo    10.17    10.17 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    140745    agencia_turismo    DATABASE     �   CREATE DATABASE agencia_turismo WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Peru.1252' LC_CTYPE = 'Spanish_Peru.1252';
    DROP DATABASE agencia_turismo;
             Jorge    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    140777 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         postgres    false    3            �            1259    140775    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       postgres    false    203    3            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
            public       postgres    false    202            �            1259    140787    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         postgres    false    3            �            1259    140785    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       postgres    false    205    3                        0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
            public       postgres    false    204            �            1259    140769    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         postgres    false    3            �            1259    140767    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       postgres    false    201    3                       0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
            public       postgres    false    200            �            1259    140795 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         postgres    false    3            �            1259    140805    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         postgres    false    3            �            1259    140803    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       postgres    false    209    3                       0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
            public       postgres    false    208            �            1259    140793    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       postgres    false    207    3                       0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
            public       postgres    false    206            �            1259    140813    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         postgres    false    3            �            1259    140811 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       postgres    false    211    3                       0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
            public       postgres    false    210            �            1259    140873    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         postgres    false    3            �            1259    140871    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       postgres    false    213    3                       0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
            public       postgres    false    212            �            1259    140759    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         postgres    false    3            �            1259    140757    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       postgres    false    3    199                       0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
            public       postgres    false    198            �            1259    140748    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         postgres    false    3            �            1259    140746    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       postgres    false    197    3                       0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
            public       postgres    false    196            �            1259    141078    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         postgres    false    3            �            1259    140974     main_departamento_agencia_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_departamento_agencia_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.main_departamento_agencia_id_seq;
       public       postgres    false    3            �            1259    140906    main_departamento_agencia    TABLE     �   CREATE TABLE public.main_departamento_agencia (
    id integer DEFAULT nextval('public.main_departamento_agencia_id_seq'::regclass) NOT NULL,
    nombre character varying(100) NOT NULL
);
 -   DROP TABLE public.main_departamento_agencia;
       public         postgres    false    223    3            �            1259    140996    main_distrito_agencia_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_distrito_agencia_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.main_distrito_agencia_id_seq;
       public       postgres    false    3            �            1259    140928    main_distrito_agencia    TABLE     �   CREATE TABLE public.main_distrito_agencia (
    id integer DEFAULT nextval('public.main_distrito_agencia_id_seq'::regclass) NOT NULL,
    nombre character varying(100) NOT NULL,
    provincia_id integer NOT NULL
);
 )   DROP TABLE public.main_distrito_agencia;
       public         postgres    false    224    3            �            1259    141042    main_evento_agencia    TABLE     �   CREATE TABLE public.main_evento_agencia (
    id integer NOT NULL,
    nombre character varying(250) NOT NULL,
    distrito_id integer NOT NULL,
    fecha date
);
 '   DROP TABLE public.main_evento_agencia;
       public         postgres    false    3            �            1259    141040    main_evento_agencia_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_evento_agencia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.main_evento_agencia_id_seq;
       public       postgres    false    231    3                       0    0    main_evento_agencia_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.main_evento_agencia_id_seq OWNED BY public.main_evento_agencia.id;
            public       postgres    false    230            �            1259    141031    main_galeria_agencia    TABLE     9  CREATE TABLE public.main_galeria_agencia (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    img1 character varying(100),
    img2 character varying(100),
    img3 character varying(100),
    img4 character varying(100),
    img5 character varying(100),
    distrito_id integer NOT NULL
);
 (   DROP TABLE public.main_galeria_agencia;
       public         postgres    false    3            �            1259    141029    main_galeria_agencia_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_galeria_agencia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.main_galeria_agencia_id_seq;
       public       postgres    false    3    229            	           0    0    main_galeria_agencia_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.main_galeria_agencia_id_seq OWNED BY public.main_galeria_agencia.id;
            public       postgres    false    228            �            1259    141023    main_paquete_turistico_agencia    TABLE     y  CREATE TABLE public.main_paquete_turistico_agencia (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    hora_salida time without time zone NOT NULL,
    hora_entrada time without time zone NOT NULL,
    precio double precision NOT NULL,
    distrito_id integer NOT NULL,
    recorrido_id integer NOT NULL,
    galeria_id integer,
    slug_paquete text
);
 2   DROP TABLE public.main_paquete_turistico_agencia;
       public         postgres    false    3            �            1259    141021 %   main_paquete_turistico_agencia_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_paquete_turistico_agencia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.main_paquete_turistico_agencia_id_seq;
       public       postgres    false    227    3            
           0    0 %   main_paquete_turistico_agencia_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.main_paquete_turistico_agencia_id_seq OWNED BY public.main_paquete_turistico_agencia.id;
            public       postgres    false    226            �            1259    157136 '   main_paquete_turistico_agencia_servicio    TABLE     �   CREATE TABLE public.main_paquete_turistico_agencia_servicio (
    id integer NOT NULL,
    paquete_turistico_agencia_id integer NOT NULL,
    servicios_agencia_id integer NOT NULL
);
 ;   DROP TABLE public.main_paquete_turistico_agencia_servicio;
       public         postgres    false    3            �            1259    157134 .   main_paquete_turistico_agencia_servicio_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_paquete_turistico_agencia_servicio_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public.main_paquete_turistico_agencia_servicio_id_seq;
       public       postgres    false    3    234                       0    0 .   main_paquete_turistico_agencia_servicio_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.main_paquete_turistico_agencia_servicio_id_seq OWNED BY public.main_paquete_turistico_agencia_servicio.id;
            public       postgres    false    233            �            1259    141007    main_provincia_agencia_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_provincia_agencia_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.main_provincia_agencia_id_seq;
       public       postgres    false    3            �            1259    140914    main_provincia_agencia    TABLE     �   CREATE TABLE public.main_provincia_agencia (
    id integer DEFAULT nextval('public.main_provincia_agencia_id_seq'::regclass) NOT NULL,
    nombre character varying(100) NOT NULL,
    departamento_id integer NOT NULL
);
 *   DROP TABLE public.main_provincia_agencia;
       public         postgres    false    225    3            �            1259    140942    main_recorrido_agencia    TABLE       CREATE TABLE public.main_recorrido_agencia (
    id integer NOT NULL,
    nombre character varying(150) NOT NULL,
    "Recorrido1" character varying(150),
    "Recorrido2" character varying(150),
    "Recorrido3" character varying(150),
    "Recorrido4" character varying(150),
    "Recorrido5" character varying(150),
    "Recorrido6" character varying(150),
    "Recorrido7" character varying(150),
    "Recorrido8" character varying(150),
    "Recorrido9" character varying(150),
    "Recorrido10" character varying(150)
);
 *   DROP TABLE public.main_recorrido_agencia;
       public         postgres    false    3            �            1259    140940    main_recorrido_agencia_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_recorrido_agencia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.main_recorrido_agencia_id_seq;
       public       postgres    false    3    218                       0    0    main_recorrido_agencia_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.main_recorrido_agencia_id_seq OWNED BY public.main_recorrido_agencia.id;
            public       postgres    false    217            �            1259    140953    main_servicios_agencia    TABLE     t   CREATE TABLE public.main_servicios_agencia (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL
);
 *   DROP TABLE public.main_servicios_agencia;
       public         postgres    false    3            �            1259    140951    main_servicios_agencia_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_servicios_agencia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.main_servicios_agencia_id_seq;
       public       postgres    false    220    3                       0    0    main_servicios_agencia_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.main_servicios_agencia_id_seq OWNED BY public.main_servicios_agencia.id;
            public       postgres    false    219            �            1259    140961    main_usuario_agencia    TABLE       CREATE TABLE public.main_usuario_agencia (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    apellido character varying(100) NOT NULL,
    celular integer NOT NULL,
    correo character varying(100) NOT NULL,
    password character varying(100) NOT NULL
);
 (   DROP TABLE public.main_usuario_agencia;
       public         postgres    false    3            �            1259    140959    main_usuario_agencia_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_usuario_agencia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.main_usuario_agencia_id_seq;
       public       postgres    false    222    3                       0    0    main_usuario_agencia_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.main_usuario_agencia_id_seq OWNED BY public.main_usuario_agencia.id;
            public       postgres    false    221            �
           2604    140780    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    203    203            �
           2604    140790    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    204    205    205            �
           2604    140772    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    200    201    201            �
           2604    140798    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    207    206    207            �
           2604    140808    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    208    209    209            �
           2604    140816    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    210    211    211            �
           2604    140876    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    213    212    213            �
           2604    140762    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    198    199            �
           2604    140751    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    196    197    197            �
           2604    141045    main_evento_agencia id    DEFAULT     �   ALTER TABLE ONLY public.main_evento_agencia ALTER COLUMN id SET DEFAULT nextval('public.main_evento_agencia_id_seq'::regclass);
 E   ALTER TABLE public.main_evento_agencia ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    231    230    231            �
           2604    141034    main_galeria_agencia id    DEFAULT     �   ALTER TABLE ONLY public.main_galeria_agencia ALTER COLUMN id SET DEFAULT nextval('public.main_galeria_agencia_id_seq'::regclass);
 F   ALTER TABLE public.main_galeria_agencia ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    229    228    229            �
           2604    141026 !   main_paquete_turistico_agencia id    DEFAULT     �   ALTER TABLE ONLY public.main_paquete_turistico_agencia ALTER COLUMN id SET DEFAULT nextval('public.main_paquete_turistico_agencia_id_seq'::regclass);
 P   ALTER TABLE public.main_paquete_turistico_agencia ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    226    227    227            �
           2604    157139 *   main_paquete_turistico_agencia_servicio id    DEFAULT     �   ALTER TABLE ONLY public.main_paquete_turistico_agencia_servicio ALTER COLUMN id SET DEFAULT nextval('public.main_paquete_turistico_agencia_servicio_id_seq'::regclass);
 Y   ALTER TABLE public.main_paquete_turistico_agencia_servicio ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    233    234    234            �
           2604    140945    main_recorrido_agencia id    DEFAULT     �   ALTER TABLE ONLY public.main_recorrido_agencia ALTER COLUMN id SET DEFAULT nextval('public.main_recorrido_agencia_id_seq'::regclass);
 H   ALTER TABLE public.main_recorrido_agencia ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    217    218    218            �
           2604    140956    main_servicios_agencia id    DEFAULT     �   ALTER TABLE ONLY public.main_servicios_agencia ALTER COLUMN id SET DEFAULT nextval('public.main_servicios_agencia_id_seq'::regclass);
 H   ALTER TABLE public.main_servicios_agencia ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    220    219    220            �
           2604    140964    main_usuario_agencia id    DEFAULT     �   ALTER TABLE ONLY public.main_usuario_agencia ALTER COLUMN id SET DEFAULT nextval('public.main_usuario_agencia_id_seq'::regclass);
 F   ALTER TABLE public.main_usuario_agencia ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    222    221    222            �          0    140777 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public       postgres    false    203   ��       �          0    140787    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    205   ��       �          0    140769    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    201   ��       �          0    140795 	   auth_user 
   TABLE DATA               �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       postgres    false    207   ��       �          0    140805    auth_user_groups 
   TABLE DATA               A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public       postgres    false    209   ��       �          0    140813    auth_user_user_permissions 
   TABLE DATA               P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    211   ��       �          0    140873    django_admin_log 
   TABLE DATA               �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    213   ��       �          0    140759    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       postgres    false    199   �      �          0    140748    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    197   �      �          0    141078    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    232   �      �          0    140906    main_departamento_agencia 
   TABLE DATA               ?   COPY public.main_departamento_agencia (id, nombre) FROM stdin;
    public       postgres    false    214   k      �          0    140928    main_distrito_agencia 
   TABLE DATA               I   COPY public.main_distrito_agencia (id, nombre, provincia_id) FROM stdin;
    public       postgres    false    216   �      �          0    141042    main_evento_agencia 
   TABLE DATA               M   COPY public.main_evento_agencia (id, nombre, distrito_id, fecha) FROM stdin;
    public       postgres    false    231   �      �          0    141031    main_galeria_agencia 
   TABLE DATA               e   COPY public.main_galeria_agencia (id, nombre, img1, img2, img3, img4, img5, distrito_id) FROM stdin;
    public       postgres    false    229   4      �          0    141023    main_paquete_turistico_agencia 
   TABLE DATA               �   COPY public.main_paquete_turistico_agencia (id, nombre, hora_salida, hora_entrada, precio, distrito_id, recorrido_id, galeria_id, slug_paquete) FROM stdin;
    public       postgres    false    227   �      �          0    157136 '   main_paquete_turistico_agencia_servicio 
   TABLE DATA               y   COPY public.main_paquete_turistico_agencia_servicio (id, paquete_turistico_agencia_id, servicios_agencia_id) FROM stdin;
    public       postgres    false    234   p	      �          0    140914    main_provincia_agencia 
   TABLE DATA               M   COPY public.main_provincia_agencia (id, nombre, departamento_id) FROM stdin;
    public       postgres    false    215   �	      �          0    140942    main_recorrido_agencia 
   TABLE DATA               �   COPY public.main_recorrido_agencia (id, nombre, "Recorrido1", "Recorrido2", "Recorrido3", "Recorrido4", "Recorrido5", "Recorrido6", "Recorrido7", "Recorrido8", "Recorrido9", "Recorrido10") FROM stdin;
    public       postgres    false    218   �	      �          0    140953    main_servicios_agencia 
   TABLE DATA               <   COPY public.main_servicios_agencia (id, nombre) FROM stdin;
    public       postgres    false    220   >      �          0    140961    main_usuario_agencia 
   TABLE DATA               _   COPY public.main_usuario_agencia (id, nombre, apellido, celular, correo, password) FROM stdin;
    public       postgres    false    222   v                 0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
            public       postgres    false    202                       0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
            public       postgres    false    204                       0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 60, true);
            public       postgres    false    200                       0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
            public       postgres    false    208                       0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);
            public       postgres    false    206                       0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
            public       postgres    false    210                       0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 46, true);
            public       postgres    false    212                       0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 15, true);
            public       postgres    false    198                       0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 24, true);
            public       postgres    false    196                       0    0     main_departamento_agencia_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.main_departamento_agencia_id_seq', 1, true);
            public       postgres    false    223                       0    0    main_distrito_agencia_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.main_distrito_agencia_id_seq', 5, true);
            public       postgres    false    224                       0    0    main_evento_agencia_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.main_evento_agencia_id_seq', 1, true);
            public       postgres    false    230                       0    0    main_galeria_agencia_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.main_galeria_agencia_id_seq', 5, true);
            public       postgres    false    228                       0    0 %   main_paquete_turistico_agencia_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.main_paquete_turistico_agencia_id_seq', 5, true);
            public       postgres    false    226                       0    0 .   main_paquete_turistico_agencia_servicio_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public.main_paquete_turistico_agencia_servicio_id_seq', 10, true);
            public       postgres    false    233                       0    0    main_provincia_agencia_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.main_provincia_agencia_id_seq', 2, true);
            public       postgres    false    225                       0    0    main_recorrido_agencia_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.main_recorrido_agencia_id_seq', 5, true);
            public       postgres    false    217                        0    0    main_servicios_agencia_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.main_servicios_agencia_id_seq', 2, true);
            public       postgres    false    219            !           0    0    main_usuario_agencia_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.main_usuario_agencia_id_seq', 1, false);
            public       postgres    false    221                       2606    140902    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    203                       2606    140839 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         postgres    false    205    205                       2606    140792 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         postgres    false    205                       2606    140782    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         postgres    false    203                       2606    140825 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         postgres    false    201    201                       2606    140774 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         postgres    false    201                       2606    140810 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         postgres    false    209                       2606    140854 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         postgres    false    209    209                       2606    140800    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         postgres    false    207                       2606    140818 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         postgres    false    211                       2606    140868 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         postgres    false    211    211                       2606    140896     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         postgres    false    207            "           2606    140882 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         postgres    false    213            �
           2606    140766 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         postgres    false    199    199            �
           2606    140764 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         postgres    false    199            �
           2606    140756 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         postgres    false    197            >           2606    141085 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         postgres    false    232            %           2606    140969 8   main_departamento_agencia main_departamento_agencia_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.main_departamento_agencia
    ADD CONSTRAINT main_departamento_agencia_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.main_departamento_agencia DROP CONSTRAINT main_departamento_agencia_pkey;
       public         postgres    false    214            *           2606    140990 0   main_distrito_agencia main_distrito_agencia_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.main_distrito_agencia
    ADD CONSTRAINT main_distrito_agencia_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.main_distrito_agencia DROP CONSTRAINT main_distrito_agencia_pkey;
       public         postgres    false    216            ;           2606    141047 ,   main_evento_agencia main_evento_agencia_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.main_evento_agencia
    ADD CONSTRAINT main_evento_agencia_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.main_evento_agencia DROP CONSTRAINT main_evento_agencia_pkey;
       public         postgres    false    231            8           2606    141039 .   main_galeria_agencia main_galeria_agencia_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.main_galeria_agencia
    ADD CONSTRAINT main_galeria_agencia_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.main_galeria_agencia DROP CONSTRAINT main_galeria_agencia_pkey;
       public         postgres    false    229            A           2606    157153 g   main_paquete_turistico_agencia_servicio main_paquete_turistico_a_paquete_turistico_agenci_d7a44c38_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.main_paquete_turistico_agencia_servicio
    ADD CONSTRAINT main_paquete_turistico_a_paquete_turistico_agenci_d7a44c38_uniq UNIQUE (paquete_turistico_agencia_id, servicios_agencia_id);
 �   ALTER TABLE ONLY public.main_paquete_turistico_agencia_servicio DROP CONSTRAINT main_paquete_turistico_a_paquete_turistico_agenci_d7a44c38_uniq;
       public         postgres    false    234    234            4           2606    141028 B   main_paquete_turistico_agencia main_paquete_turistico_agencia_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.main_paquete_turistico_agencia
    ADD CONSTRAINT main_paquete_turistico_agencia_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.main_paquete_turistico_agencia DROP CONSTRAINT main_paquete_turistico_agencia_pkey;
       public         postgres    false    227            E           2606    157141 T   main_paquete_turistico_agencia_servicio main_paquete_turistico_agencia_servicio_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.main_paquete_turistico_agencia_servicio
    ADD CONSTRAINT main_paquete_turistico_agencia_servicio_pkey PRIMARY KEY (id);
 ~   ALTER TABLE ONLY public.main_paquete_turistico_agencia_servicio DROP CONSTRAINT main_paquete_turistico_agencia_servicio_pkey;
       public         postgres    false    234            (           2606    141001 2   main_provincia_agencia main_provincia_agencia_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.main_provincia_agencia
    ADD CONSTRAINT main_provincia_agencia_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.main_provincia_agencia DROP CONSTRAINT main_provincia_agencia_pkey;
       public         postgres    false    215            -           2606    140950 2   main_recorrido_agencia main_recorrido_agencia_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.main_recorrido_agencia
    ADD CONSTRAINT main_recorrido_agencia_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.main_recorrido_agencia DROP CONSTRAINT main_recorrido_agencia_pkey;
       public         postgres    false    218            /           2606    140958 2   main_servicios_agencia main_servicios_agencia_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.main_servicios_agencia
    ADD CONSTRAINT main_servicios_agencia_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.main_servicios_agencia DROP CONSTRAINT main_servicios_agencia_pkey;
       public         postgres    false    220            1           2606    140966 .   main_usuario_agencia main_usuario_agencia_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.main_usuario_agencia
    ADD CONSTRAINT main_usuario_agencia_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.main_usuario_agencia DROP CONSTRAINT main_usuario_agencia_pkey;
       public         postgres    false    222                       1259    140903    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         postgres    false    203            	           1259    140840 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         postgres    false    205                       1259    140841 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         postgres    false    205            �
           1259    140826 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         postgres    false    201                       1259    140856 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         postgres    false    209                       1259    140855 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         postgres    false    209                       1259    140870 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         postgres    false    211                       1259    140869 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         postgres    false    211                       1259    140897     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         postgres    false    207                        1259    140893 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         postgres    false    213            #           1259    140894 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         postgres    false    213            <           1259    141087 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         postgres    false    232            ?           1259    141086 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         postgres    false    232            +           1259    141010 +   main_distrito_agencia_provincia_id_495e2016    INDEX     u   CREATE INDEX main_distrito_agencia_provincia_id_495e2016 ON public.main_distrito_agencia USING btree (provincia_id);
 ?   DROP INDEX public.main_distrito_agencia_provincia_id_495e2016;
       public         postgres    false    216            9           1259    141077 (   main_evento_agencia_distrito_id_fc0f5dd9    INDEX     o   CREATE INDEX main_evento_agencia_distrito_id_fc0f5dd9 ON public.main_evento_agencia USING btree (distrito_id);
 <   DROP INDEX public.main_evento_agencia_distrito_id_fc0f5dd9;
       public         postgres    false    231            6           1259    141071 )   main_galeria_agencia_distrito_id_317b39e9    INDEX     q   CREATE INDEX main_galeria_agencia_distrito_id_317b39e9 ON public.main_galeria_agencia USING btree (distrito_id);
 =   DROP INDEX public.main_galeria_agencia_distrito_id_317b39e9;
       public         postgres    false    229            B           1259    157154 >   main_paquete_turistico_age_paquete_turistico_agencia__f3242762    INDEX     �   CREATE INDEX main_paquete_turistico_age_paquete_turistico_agencia__f3242762 ON public.main_paquete_turistico_agencia_servicio USING btree (paquete_turistico_agencia_id);
 R   DROP INDEX public.main_paquete_turistico_age_paquete_turistico_agencia__f3242762;
       public         postgres    false    234            C           1259    157155 8   main_paquete_turistico_age_servicios_agencia_id_03acdddb    INDEX     �   CREATE INDEX main_paquete_turistico_age_servicios_agencia_id_03acdddb ON public.main_paquete_turistico_agencia_servicio USING btree (servicios_agencia_id);
 L   DROP INDEX public.main_paquete_turistico_age_servicios_agencia_id_03acdddb;
       public         postgres    false    234            2           1259    141063 3   main_paquete_turistico_agencia_distrito_id_dbdebc79    INDEX     �   CREATE INDEX main_paquete_turistico_agencia_distrito_id_dbdebc79 ON public.main_paquete_turistico_agencia USING btree (distrito_id);
 G   DROP INDEX public.main_paquete_turistico_agencia_distrito_id_dbdebc79;
       public         postgres    false    227            5           1259    141064 4   main_paquete_turistico_agencia_recorrido_id_60feea81    INDEX     �   CREATE INDEX main_paquete_turistico_agencia_recorrido_id_60feea81 ON public.main_paquete_turistico_agencia USING btree (recorrido_id);
 H   DROP INDEX public.main_paquete_turistico_agencia_recorrido_id_60feea81;
       public         postgres    false    227            &           1259    140977 /   main_provincia_agencia_departamento_id_e3234ddd    INDEX     }   CREATE INDEX main_provincia_agencia_departamento_id_e3234ddd ON public.main_provincia_agencia USING btree (departamento_id);
 C   DROP INDEX public.main_provincia_agencia_departamento_id_e3234ddd;
       public         postgres    false    215            H           2606    140833 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       postgres    false    205    201    2819            G           2606    140828 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       postgres    false    2824    203    205            F           2606    140819 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       postgres    false    201    199    2814            J           2606    140848 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       postgres    false    2824    203    209            I           2606    140843 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       postgres    false    2832    207    209            L           2606    140862 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       postgres    false    201    211    2819            K           2606    140857 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       postgres    false    211    2832    207            M           2606    140883 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       postgres    false    199    2814    213            N           2606    140888 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       postgres    false    2832    213    207            P           2606    141016 D   main_distrito_agencia main_distrito_agencia_provincia_id_495e2016_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.main_distrito_agencia
    ADD CONSTRAINT main_distrito_agencia_provincia_id_495e2016_fk FOREIGN KEY (provincia_id) REFERENCES public.main_provincia_agencia(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.main_distrito_agencia DROP CONSTRAINT main_distrito_agencia_provincia_id_495e2016_fk;
       public       postgres    false    2856    216    215            T           2606    141072 I   main_evento_agencia main_evento_agencia_distrito_id_fc0f5dd9_fk_main_dist    FK CONSTRAINT     �   ALTER TABLE ONLY public.main_evento_agencia
    ADD CONSTRAINT main_evento_agencia_distrito_id_fc0f5dd9_fk_main_dist FOREIGN KEY (distrito_id) REFERENCES public.main_distrito_agencia(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.main_evento_agencia DROP CONSTRAINT main_evento_agencia_distrito_id_fc0f5dd9_fk_main_dist;
       public       postgres    false    216    231    2858            S           2606    141066 K   main_galeria_agencia main_galeria_agencia_distrito_id_317b39e9_fk_main_dist    FK CONSTRAINT     �   ALTER TABLE ONLY public.main_galeria_agencia
    ADD CONSTRAINT main_galeria_agencia_distrito_id_317b39e9_fk_main_dist FOREIGN KEY (distrito_id) REFERENCES public.main_distrito_agencia(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.main_galeria_agencia DROP CONSTRAINT main_galeria_agencia_distrito_id_317b39e9_fk_main_dist;
       public       postgres    false    2858    229    216            Q           2606    141048 U   main_paquete_turistico_agencia main_paquete_turisti_distrito_id_dbdebc79_fk_main_dist    FK CONSTRAINT     �   ALTER TABLE ONLY public.main_paquete_turistico_agencia
    ADD CONSTRAINT main_paquete_turisti_distrito_id_dbdebc79_fk_main_dist FOREIGN KEY (distrito_id) REFERENCES public.main_distrito_agencia(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.main_paquete_turistico_agencia DROP CONSTRAINT main_paquete_turisti_distrito_id_dbdebc79_fk_main_dist;
       public       postgres    false    216    227    2858            U           2606    157142 g   main_paquete_turistico_agencia_servicio main_paquete_turisti_paquete_turistico_ag_f3242762_fk_main_paqu    FK CONSTRAINT       ALTER TABLE ONLY public.main_paquete_turistico_agencia_servicio
    ADD CONSTRAINT main_paquete_turisti_paquete_turistico_ag_f3242762_fk_main_paqu FOREIGN KEY (paquete_turistico_agencia_id) REFERENCES public.main_paquete_turistico_agencia(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.main_paquete_turistico_agencia_servicio DROP CONSTRAINT main_paquete_turisti_paquete_turistico_ag_f3242762_fk_main_paqu;
       public       postgres    false    227    234    2868            R           2606    141053 V   main_paquete_turistico_agencia main_paquete_turisti_recorrido_id_60feea81_fk_main_reco    FK CONSTRAINT     �   ALTER TABLE ONLY public.main_paquete_turistico_agencia
    ADD CONSTRAINT main_paquete_turisti_recorrido_id_60feea81_fk_main_reco FOREIGN KEY (recorrido_id) REFERENCES public.main_recorrido_agencia(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.main_paquete_turistico_agencia DROP CONSTRAINT main_paquete_turisti_recorrido_id_60feea81_fk_main_reco;
       public       postgres    false    227    218    2861            V           2606    157147 g   main_paquete_turistico_agencia_servicio main_paquete_turisti_servicios_agencia_id_03acdddb_fk_main_serv    FK CONSTRAINT       ALTER TABLE ONLY public.main_paquete_turistico_agencia_servicio
    ADD CONSTRAINT main_paquete_turisti_servicios_agencia_id_03acdddb_fk_main_serv FOREIGN KEY (servicios_agencia_id) REFERENCES public.main_servicios_agencia(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.main_paquete_turistico_agencia_servicio DROP CONSTRAINT main_paquete_turisti_servicios_agencia_id_03acdddb_fk_main_serv;
       public       postgres    false    220    234    2863            O           2606    140983 I   main_provincia_agencia main_provincia_agencia_departamento_id_e3234ddd_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.main_provincia_agencia
    ADD CONSTRAINT main_provincia_agencia_departamento_id_e3234ddd_fk FOREIGN KEY (departamento_id) REFERENCES public.main_departamento_agencia(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.main_provincia_agencia DROP CONSTRAINT main_provincia_agencia_departamento_id_e3234ddd_fk;
       public       postgres    false    214    215    2853            �      x������ � �      �      x������ � �      �   �  x�}�M�� ���9����d=�h��l�AJ�lgԷ
��rvq�>x��e�[�9�����q5?EY��_��}�����PD�JQX[᠞j�BW���
_Z�#��Emp6+�EOcQYk� :l���^�?��H{���zD�{p�0�6�5h������$%��%`$U�������(S4���S�^Fay'h�� �ŝ��kð]�^���4���]֟Y�u ��"�6����߱�D�����6��K�ep�(w��5O�"�{Ԁ� #o{��� C�zYWA��A�Ҭ�{7;}ɽz-��������'4�' =q2l�� 5�	n7�ñ{f3��Q�͵zZ5�*�󝟣��8�A��.�@�9�s��j4�g��\���I�2�?�$�̀�3u9���ˠ��F��1z�О|�޲Q�$`A�ÒT`Y�a�6(!X�n��pZ�����D���HD�D�4��$W6DLƒ�aHȝ�k��I��_S�}Bʢ��ՒA�I�+�q2.�>	w�QF���0(]���v�������>���ͻ�|��E���\>����n&�L��Ązȧ2(�J�-��EK���Nʑ|b8�ٓr(��}�LL'�"�Q�>OhU�$�r��R$�r
6�Pʢ���I��_B����      �   �   x�m�Kk�@�����]Q��<T�$�>�,I	;V�h�Qӑ��Nɪgs�\.߇A�Qe9~��S�"
m\]'M����[�dL���f'�ѼY��)՚���d���e��x8�)�=��g�� C�<�=H'�� JB�����vr����t�����7��H��}��=~+��񱻻�M�e�P�Gq*�e3��� *)���P ���Y�}��V��o�C�k_5{��2�_&��X��_՝�8��]R�      �      x������ � �      �      x������ � �      �   �  x����n�F���S:�@�ؙ���C��r�8��-��
YJiٗ U��b�%儢H�R{�`x~���|3���y����bEB)@��\$�鄿�?���<�������v C܏�FH%���G�f��%
��1���NΓ49O�$-�j �	2�����|�Y�����"��7�M�|�B�����A
�=ߪB�-����u�ɣ�y���}JAA���:��C��t�l�,��klu�i>[�b��ҬXe��2J�ȿ��n�J��&T��V!UЏ�_9.���<�.��Y+O1�7x
bi�%㵩xi2=O�%gQ:�N�Ӷ� boZh4��g��8�#[�V���|9���G��2/�������<.説�蔆�#?�aqw[|y��;l�
���x�������>�8s�������P#Ax�Q�����7Wl�6��naxa�K�*�t��v�`o0�p�5
D)M����4�z��Q�,v�M��I	�H@�I��I�T�p�I���A��E ���+�\X�볳�C�M���ܖ�zr���8:G��ir~>�-�B��r_G@��Hn���ˆ:��]'�{p��ѴqU˦����ꗮ*Cj�c,y�yk�~!��K�HҞ4�(�1M��K�C��K�R� p+C%9E�W��$[�٣d9[���0'�ŗV]��pkea�g�&\�?���7)>��"Ox݋�Q���[�CVd���s>�ZQ�0Uª��7��O�V����$(�n�uk1�%�K�K-{9������6��pj��%�	nU�4Jۆ�S�SY��W(�;�x��=o�9o���q1[�kG�f>^�x�ņ��0ˀ�BQ��D��t�?����:$ɖF(CHxĬoK�<���Wi�1!̀�2�P�a)�ɩ58�o/�B8�!
_�����k+��"^�$oI�e�R����75��ۤ�&��Z�?�A;o����yp[pľY�NV����;����G�I�����Ӊ�      �   �   x�U�Y�0D��� �����R�Xj�`'�z{)��y3�28̼�ɍ�٠6��x��U�-�de=�y�J��n	)6OZ.p2J�~8�S�@%�����Tjᒙ��K���b�E�:f d��2I�l��ԙD�(\$����!J�c[8��q")���������  O�,xd      �     x���[��0E��*���\�7kɲO��������m�iϤ����N��9���y~���B�����v�7"�@[.Z�N�)a�_~��.���#������~x��(�)���n��>��׏wgb���˥ʐ����3�Έ9cϳ�Ws~�9
��8�R�%��¯n�&�1��]���dч�v���B�)��򦷟�s�5>UEADe����Z�xq���K
�!](왒.���6��(ƀe�@
�?3:;�I���-]}�+�Y2@��h�c����M�V�������[+w�����0����`z7M����+)A�8Zp�j�fM�ڦc���9�
��ſP@6�5���gF��!�(0�-*r�����Y��9�u�/�>m�0�#�D0����쭉�H��0?Ect[�.aj.~��Og���B2�|n��e���'�DYM�صd9��6%/��'��[�b)ʟ�"l/�x�"k�L-�{FZ���DV#P)���I����ı�t<H�T�EO<����u: S.�@      �   �  x���K��0�qe��D�`�H=�t!��Q�T��'�e�!���wȠ{���JW:���^ݒ�����:�8V���h7x�[qg��,c���l�07���l+Hf2#��%��-�^�Y��֋,�*�S��tU�ɺ����}��O�B]��[ii)~�RE�Xfa����j��͐'�M�;��99�G����]��^�_����P�ݐ"�%�yt�� F��:��-#�V�8\�rX�M���<��1'K6�IԀ_o 8���� 0] �PL��Z��P[hsr(M}�r�=�
>���;HB��';e�9���|*T�,.�fIu:��e7�A�i�`@�ݹ��.W�U%e��5�Ϻ��3:u����5��}ڡ����[@1y��Y�f��;s�/      �      x�3�pv������ c      �   W   x�3�t�stv�s�p�4�2��wv��4�2��u���q�
�p��F����.�y��9
�9ə)��
ΉEE��7����qqq "�      �   -   x�3�tv�ss�Qpv
r��4�4202�50�52����� ���      �   K  x�mQAn�0<ۯ���BH��T��d-�R��q%�U�Џ��N[DO�����(�<)���)E-tG�+�Vh�tP��۩rW���^��qD|'�L��I\��цn�ꏞu���A��Qu1E&=�M���ȂYl��,O���>f�Z%;�W��v�Eقf6ڹi�<:�
M�;��O�Av��"x�$4�dh���)�6W��y��g�q��t�L�n� �iJ�$X���J�K��J�ܮ��-?��h��m����%,����� �[�F8Di����d�Y�g9EZ	��0.�V|}*os�G7t��ȹ��u�1���      �   �   x�m��j�0�����T��ⶻ,�P�KW�c7�i�B�hj���D���s�Oг�_<Z����>벡mU�%��$�ҋ<$�:3��{�w��0�u��4p�s�u�.n><�	��fr?�h���;�Wg�W��u��Q��ZE�K��m�H�P`G��!V�Zm�ЋX��y�,���pN��>Y�ӌ;�Ul�R�0ƿ!'N�      �   3   x���  �7�&:�b�u�g���\�|E�����/5���m4      �   $   x�3�pv��4�2�t�s�u�svrc���� b��      �   G  x�uQ[n� �&��T�� L$L�D��&����y|�=Jϐ����DBb�Y������R�7pJ-��S����ن���v�g�ޏ�p�t����[b+}u���h�C����0Ʋ@�ƁB.H�7�H��3�9*,`֡4���'B!@3�J�p���U��Xh�Ro�xdc�_�������.����<	�J�\zYao*�0�_�)%�Y�!���
n�e�����=1k|Xf.�n��yV�ވ�3�L��f�g��;�[���m���x��k��1���k�aS�u��cfN��6s���.߃C��x��5�]ݍF�o/��      �   (   x�3�)J�+.�/*IU�LI�2B+M�)I����� .�U      �      x������ � �     