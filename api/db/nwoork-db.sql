PGDMP  %                    |            nwoork    16.3    16.3 .    ;           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            <           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            =           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            >           1262    16398    nwoork    DATABASE     h   CREATE DATABASE nwoork WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE nwoork;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false            ?           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    4            �            1259    17158 
   categories    TABLE     �   CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying(150) NOT NULL,
    "createdAt" timestamp(1) without time zone DEFAULT now() NOT NULL
);
    DROP TABLE public.categories;
       public         heap    postgres    false    4            �            1259    17157    categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public          postgres    false    222    4            @           0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
          public          postgres    false    221            �            1259    17071 
   priorities    TABLE     f   CREATE TABLE public.priorities (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.priorities;
       public         heap    postgres    false    4            �            1259    17070    priorities_id_seq    SEQUENCE     �   CREATE SEQUENCE public.priorities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.priorities_id_seq;
       public          postgres    false    220    4            A           0    0    priorities_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.priorities_id_seq OWNED BY public.priorities.id;
          public          postgres    false    219            �            1259    17038    statuses    TABLE     d   CREATE TABLE public.statuses (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.statuses;
       public         heap    postgres    false    4            �            1259    17037    statuses_id_seq    SEQUENCE     �   CREATE SEQUENCE public.statuses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.statuses_id_seq;
       public          postgres    false    218    4            B           0    0    statuses_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.statuses_id_seq OWNED BY public.statuses.id;
          public          postgres    false    217            �            1259    17168    tasks    TABLE     b  CREATE TABLE public.tasks (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    description text,
    "dueDate" timestamp(1) without time zone DEFAULT now() NOT NULL,
    "createdAt" timestamp(1) without time zone DEFAULT now() NOT NULL,
    priority_id integer,
    user_id integer,
    category_id integer,
    status_id integer
);
    DROP TABLE public.tasks;
       public         heap    postgres    false    4            �            1259    17167    tasks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tasks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.tasks_id_seq;
       public          postgres    false    224    4            C           0    0    tasks_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.tasks_id_seq OWNED BY public.tasks.id;
          public          postgres    false    223            �            1259    17023    users    TABLE       CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    phone character varying(15) NOT NULL,
    "createdAt" timestamp(1) without time zone DEFAULT now() NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false    4            �            1259    17022    users_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_user_id_seq;
       public          postgres    false    216    4            D           0    0    users_user_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;
          public          postgres    false    215            �           2604    17161    categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            �           2604    17074    priorities id    DEFAULT     n   ALTER TABLE ONLY public.priorities ALTER COLUMN id SET DEFAULT nextval('public.priorities_id_seq'::regclass);
 <   ALTER TABLE public.priorities ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            �           2604    17041    statuses id    DEFAULT     j   ALTER TABLE ONLY public.statuses ALTER COLUMN id SET DEFAULT nextval('public.statuses_id_seq'::regclass);
 :   ALTER TABLE public.statuses ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            �           2604    17171    tasks id    DEFAULT     d   ALTER TABLE ONLY public.tasks ALTER COLUMN id SET DEFAULT nextval('public.tasks_id_seq'::regclass);
 7   ALTER TABLE public.tasks ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            �           2604    17026    users user_id    DEFAULT     n   ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);
 <   ALTER TABLE public.users ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    215    216    216            6          0    17158 
   categories 
   TABLE DATA           ;   COPY public.categories (id, name, "createdAt") FROM stdin;
    public          postgres    false    222   �3       4          0    17071 
   priorities 
   TABLE DATA           .   COPY public.priorities (id, name) FROM stdin;
    public          postgres    false    220   ;4       2          0    17038    statuses 
   TABLE DATA           ,   COPY public.statuses (id, name) FROM stdin;
    public          postgres    false    218   n4       8          0    17168    tasks 
   TABLE DATA           }   COPY public.tasks (id, title, description, "dueDate", "createdAt", priority_id, user_id, category_id, status_id) FROM stdin;
    public          postgres    false    224   �4       0          0    17023    users 
   TABLE DATA           I   COPY public.users (user_id, name, email, phone, "createdAt") FROM stdin;
    public          postgres    false    216   5       E           0    0    categories_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.categories_id_seq', 6, true);
          public          postgres    false    221            F           0    0    priorities_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.priorities_id_seq', 4, true);
          public          postgres    false    219            G           0    0    statuses_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.statuses_id_seq', 3, true);
          public          postgres    false    217            H           0    0    tasks_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.tasks_id_seq', 1, true);
          public          postgres    false    223            I           0    0    users_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.users_user_id_seq', 1, true);
          public          postgres    false    215            �           2606    17164 )   categories PK_24dbc6126a28ff948da33e97d3b 
   CONSTRAINT     i   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT "PK_24dbc6126a28ff948da33e97d3b" PRIMARY KEY (id);
 U   ALTER TABLE ONLY public.categories DROP CONSTRAINT "PK_24dbc6126a28ff948da33e97d3b";
       public            postgres    false    222            �           2606    17043 '   statuses PK_2fd3770acdb67736f1a3e3d5399 
   CONSTRAINT     g   ALTER TABLE ONLY public.statuses
    ADD CONSTRAINT "PK_2fd3770acdb67736f1a3e3d5399" PRIMARY KEY (id);
 S   ALTER TABLE ONLY public.statuses DROP CONSTRAINT "PK_2fd3770acdb67736f1a3e3d5399";
       public            postgres    false    218            �           2606    17177 $   tasks PK_8d12ff38fcc62aaba2cab748772 
   CONSTRAINT     d   ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT "PK_8d12ff38fcc62aaba2cab748772" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.tasks DROP CONSTRAINT "PK_8d12ff38fcc62aaba2cab748772";
       public            postgres    false    224            �           2606    17076 )   priorities PK_928b91cfc09b11e82aeb6373b22 
   CONSTRAINT     i   ALTER TABLE ONLY public.priorities
    ADD CONSTRAINT "PK_928b91cfc09b11e82aeb6373b22" PRIMARY KEY (id);
 U   ALTER TABLE ONLY public.priorities DROP CONSTRAINT "PK_928b91cfc09b11e82aeb6373b22";
       public            postgres    false    220            �           2606    17029 $   users PK_96aac72f1574b88752e9fb00089 
   CONSTRAINT     i   ALTER TABLE ONLY public.users
    ADD CONSTRAINT "PK_96aac72f1574b88752e9fb00089" PRIMARY KEY (user_id);
 P   ALTER TABLE ONLY public.users DROP CONSTRAINT "PK_96aac72f1574b88752e9fb00089";
       public            postgres    false    216            �           2606    17166 )   categories UQ_8b0be371d28245da6e4f4b61878 
   CONSTRAINT     f   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT "UQ_8b0be371d28245da6e4f4b61878" UNIQUE (name);
 U   ALTER TABLE ONLY public.categories DROP CONSTRAINT "UQ_8b0be371d28245da6e4f4b61878";
       public            postgres    false    222            �           2606    17178 $   tasks FK_5d1c8f7898b5b84ad5ce08fcff8    FK CONSTRAINT     �   ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT "FK_5d1c8f7898b5b84ad5ce08fcff8" FOREIGN KEY (priority_id) REFERENCES public.priorities(id);
 P   ALTER TABLE ONLY public.tasks DROP CONSTRAINT "FK_5d1c8f7898b5b84ad5ce08fcff8";
       public          postgres    false    224    220    3477            �           2606    17188 $   tasks FK_d94d89c9ec19bc4470e3368c905    FK CONSTRAINT     �   ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT "FK_d94d89c9ec19bc4470e3368c905" FOREIGN KEY (category_id) REFERENCES public.categories(id);
 P   ALTER TABLE ONLY public.tasks DROP CONSTRAINT "FK_d94d89c9ec19bc4470e3368c905";
       public          postgres    false    224    3479    222            �           2606    17183 $   tasks FK_db55af84c226af9dce09487b61b    FK CONSTRAINT     �   ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT "FK_db55af84c226af9dce09487b61b" FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 P   ALTER TABLE ONLY public.tasks DROP CONSTRAINT "FK_db55af84c226af9dce09487b61b";
       public          postgres    false    224    3473    216            �           2606    17193 $   tasks FK_e28288969fa7827bd12680cfe10    FK CONSTRAINT     �   ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT "FK_e28288969fa7827bd12680cfe10" FOREIGN KEY (status_id) REFERENCES public.statuses(id);
 P   ALTER TABLE ONLY public.tasks DROP CONSTRAINT "FK_e28288969fa7827bd12680cfe10";
       public          postgres    false    3475    218    224            6   p   x�m�;�0 ��>�J���Y�$R[��}������s��lXFF��e��) ý����I�S(��^�yɿ�	EX��Q�:�atP�v����?���ZOo��o�1)j      4   #   x�3�t�)I�2�tJ�J�2��MM�L����� ]zH      2   +   x�3�t,)J,NLI�2�t�+)JM���l��Ң�|�=... �#      8   I   x�3�I,JMT0�tI-N.�,H���S(������(X�\��B��������Pϒ���b���� ���      0   V   x�3�tM)M,J�W�H-�K�KI��L��$�f��3��s3s���s9����M�8��Lt�u�����Ș+F��� �ML     