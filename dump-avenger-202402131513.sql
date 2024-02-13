PGDMP                      |            avenger    16.1    16.1 ]    W           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            X           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            Y           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            Z           1262    24755    avenger    DATABASE     z   CREATE DATABASE avenger WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'French_France.1252';
    DROP DATABASE avenger;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false            [           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    4            �            1259    24860    adresse    TABLE     �   CREATE TABLE public.adresse (
    id_adresse integer NOT NULL,
    numero_rue character varying,
    nom_rue character varying,
    code_postal character varying,
    ville character varying,
    pays character varying
);
    DROP TABLE public.adresse;
       public         heap    postgres    false    4            �            1259    24859    adresse_ip_adresse_seq    SEQUENCE     �   CREATE SEQUENCE public.adresse_ip_adresse_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.adresse_ip_adresse_seq;
       public          postgres    false    238    4            \           0    0    adresse_ip_adresse_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.adresse_ip_adresse_seq OWNED BY public.adresse.id_adresse;
          public          postgres    false    237            �            1259    24780    civil    TABLE     �  CREATE TABLE public.civil (
    id_civil integer NOT NULL,
    nom_civil character varying,
    prenom_civil character varying,
    genre character varying,
    date_naissance date,
    date_deces date,
    nationalite character varying,
    organisation character varying,
    commentaire character varying,
    date_ajout date,
    date_modif date,
    nb_incident integer,
    nb_mission integer,
    id_adresse integer
);
    DROP TABLE public.civil;
       public         heap    postgres    false    4            �            1259    24779    civil_id_civil_seq    SEQUENCE     �   CREATE SEQUENCE public.civil_id_civil_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.civil_id_civil_seq;
       public          postgres    false    220    4            ]           0    0    civil_id_civil_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.civil_id_civil_seq OWNED BY public.civil.id_civil;
          public          postgres    false    219            �            1259    24850    crise    TABLE     �   CREATE TABLE public.crise (
    id_crise integer NOT NULL,
    avenger_demasque character varying,
    vilain_decouvert character varying,
    dommage_collateral character varying,
    frais character varying,
    proces character varying
);
    DROP TABLE public.crise;
       public         heap    postgres    false    4            �            1259    24849    crise_id_crise_seq    SEQUENCE     �   CREATE SEQUENCE public.crise_id_crise_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.crise_id_crise_seq;
       public          postgres    false    236    4            ^           0    0    crise_id_crise_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.crise_id_crise_seq OWNED BY public.crise.id_crise;
          public          postgres    false    235            �            1259    24798    incident    TABLE     a   CREATE TABLE public.incident (
    id_incident integer NOT NULL,
    nature character varying
);
    DROP TABLE public.incident;
       public         heap    postgres    false    4            �            1259    24797    incident_id_incident_seq    SEQUENCE     �   CREATE SEQUENCE public.incident_id_incident_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.incident_id_incident_seq;
       public          postgres    false    224    4            _           0    0    incident_id_incident_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.incident_id_incident_seq OWNED BY public.incident.id_incident;
          public          postgres    false    223            �            1259    24841    litige    TABLE     #  CREATE TABLE public.litige (
    id_litige integer NOT NULL,
    objet character varying,
    type character varying,
    personnes_concernees character varying,
    cout character varying,
    degat_majeur character varying,
    deces_citoyens integer,
    casse_biens character varying
);
    DROP TABLE public.litige;
       public         heap    postgres    false    4            �            1259    24840    litige_id_litige_seq    SEQUENCE     �   CREATE SEQUENCE public.litige_id_litige_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.litige_id_litige_seq;
       public          postgres    false    4    234            `           0    0    litige_id_litige_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.litige_id_litige_seq OWNED BY public.litige.id_litige;
          public          postgres    false    233            �            1259    24807    mission    TABLE       CREATE TABLE public.mission (
    id_mission integer NOT NULL,
    nature character varying,
    titre character varying,
    date_debut date,
    date_fin date,
    info character varying,
    niveau_gravite character varying,
    niveau_urgence character varying
);
    DROP TABLE public.mission;
       public         heap    postgres    false    4            �            1259    24806    mission_id_mission_seq    SEQUENCE     �   CREATE SEQUENCE public.mission_id_mission_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.mission_id_mission_seq;
       public          postgres    false    4    226            a           0    0    mission_id_mission_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.mission_id_mission_seq OWNED BY public.mission.id_mission;
          public          postgres    false    225            �            1259    24789    organisation    TABLE     a  CREATE TABLE public.organisation (
    id_organisation integer NOT NULL,
    nom character varying,
    commentaire character varying,
    date_ajout date,
    date_modif date,
    nb_incident integer,
    nb_mission integer,
    dirigeant character varying,
    membre character varying,
    id_adresse integer,
    numero_tel character varying(10)
);
     DROP TABLE public.organisation;
       public         heap    postgres    false    4            �            1259    24788     organisation_id_organisation_seq    SEQUENCE     �   CREATE SEQUENCE public.organisation_id_organisation_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.organisation_id_organisation_seq;
       public          postgres    false    4    222            b           0    0     organisation_id_organisation_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.organisation_id_organisation_seq OWNED BY public.organisation.id_organisation;
          public          postgres    false    221            �            1259    24832    piece    TABLE     x   CREATE TABLE public.piece (
    id_piece integer NOT NULL,
    type character varying,
    contenu character varying
);
    DROP TABLE public.piece;
       public         heap    postgres    false    4            �            1259    24831    piece_id_piece_seq    SEQUENCE     �   CREATE SEQUENCE public.piece_id_piece_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.piece_id_piece_seq;
       public          postgres    false    4    232            c           0    0    piece_id_piece_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.piece_id_piece_seq OWNED BY public.piece.id_piece;
          public          postgres    false    231            �            1259    24816    rapport    TABLE     �   CREATE TABLE public.rapport (
    id_rapport integer NOT NULL,
    interlocuteur character varying,
    evenement character varying
);
    DROP TABLE public.rapport;
       public         heap    postgres    false    4            �            1259    24815    rapport_id_rapport_seq    SEQUENCE     �   CREATE SEQUENCE public.rapport_id_rapport_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.rapport_id_rapport_seq;
       public          postgres    false    4    228            d           0    0    rapport_id_rapport_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.rapport_id_rapport_seq OWNED BY public.rapport.id_rapport;
          public          postgres    false    227            �            1259    24825    satisfaction    TABLE     \   CREATE TABLE public.satisfaction (
    id_satisfation integer NOT NULL,
    note integer
);
     DROP TABLE public.satisfaction;
       public         heap    postgres    false    4            �            1259    24824    satisfaction_id_satisfation_seq    SEQUENCE     �   CREATE SEQUENCE public.satisfaction_id_satisfation_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.satisfaction_id_satisfation_seq;
       public          postgres    false    4    230            e           0    0    satisfaction_id_satisfation_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.satisfaction_id_satisfation_seq OWNED BY public.satisfaction.id_satisfation;
          public          postgres    false    229            �            1259    24756 
   super_hero    TABLE     I  CREATE TABLE public.super_hero (
    id_hero integer NOT NULL,
    nom_hero character varying NOT NULL,
    identite_secrete character varying,
    pouvoir character varying,
    point_faible character varying,
    score integer,
    commentaire character varying,
    numero_tel character varying(10),
    id_adresse integer
);
    DROP TABLE public.super_hero;
       public         heap    postgres    false    4            �            1259    24761    super_hero_id_hero_seq    SEQUENCE     �   CREATE SEQUENCE public.super_hero_id_hero_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.super_hero_id_hero_seq;
       public          postgres    false    215    4            f           0    0    super_hero_id_hero_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.super_hero_id_hero_seq OWNED BY public.super_hero.id_hero;
          public          postgres    false    216            �            1259    24771    super_vilain    TABLE     �   CREATE TABLE public.super_vilain (
    id_vilain integer NOT NULL,
    nom_vilain character varying NOT NULL,
    identite_secrete character varying,
    pouvoir character varying,
    point_faible character varying,
    commentaire character varying
);
     DROP TABLE public.super_vilain;
       public         heap    postgres    false    4            �            1259    24770    super_vilain_id_vilain_seq    SEQUENCE     �   CREATE SEQUENCE public.super_vilain_id_vilain_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.super_vilain_id_vilain_seq;
       public          postgres    false    4    218            g           0    0    super_vilain_id_vilain_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.super_vilain_id_vilain_seq OWNED BY public.super_vilain.id_vilain;
          public          postgres    false    217            �           2604    24863    adresse id_adresse    DEFAULT     x   ALTER TABLE ONLY public.adresse ALTER COLUMN id_adresse SET DEFAULT nextval('public.adresse_ip_adresse_seq'::regclass);
 A   ALTER TABLE public.adresse ALTER COLUMN id_adresse DROP DEFAULT;
       public          postgres    false    237    238    238            �           2604    24783    civil id_civil    DEFAULT     p   ALTER TABLE ONLY public.civil ALTER COLUMN id_civil SET DEFAULT nextval('public.civil_id_civil_seq'::regclass);
 =   ALTER TABLE public.civil ALTER COLUMN id_civil DROP DEFAULT;
       public          postgres    false    220    219    220            �           2604    24853    crise id_crise    DEFAULT     p   ALTER TABLE ONLY public.crise ALTER COLUMN id_crise SET DEFAULT nextval('public.crise_id_crise_seq'::regclass);
 =   ALTER TABLE public.crise ALTER COLUMN id_crise DROP DEFAULT;
       public          postgres    false    235    236    236            �           2604    24801    incident id_incident    DEFAULT     |   ALTER TABLE ONLY public.incident ALTER COLUMN id_incident SET DEFAULT nextval('public.incident_id_incident_seq'::regclass);
 C   ALTER TABLE public.incident ALTER COLUMN id_incident DROP DEFAULT;
       public          postgres    false    223    224    224            �           2604    24844    litige id_litige    DEFAULT     t   ALTER TABLE ONLY public.litige ALTER COLUMN id_litige SET DEFAULT nextval('public.litige_id_litige_seq'::regclass);
 ?   ALTER TABLE public.litige ALTER COLUMN id_litige DROP DEFAULT;
       public          postgres    false    234    233    234            �           2604    24810    mission id_mission    DEFAULT     x   ALTER TABLE ONLY public.mission ALTER COLUMN id_mission SET DEFAULT nextval('public.mission_id_mission_seq'::regclass);
 A   ALTER TABLE public.mission ALTER COLUMN id_mission DROP DEFAULT;
       public          postgres    false    226    225    226            �           2604    24792    organisation id_organisation    DEFAULT     �   ALTER TABLE ONLY public.organisation ALTER COLUMN id_organisation SET DEFAULT nextval('public.organisation_id_organisation_seq'::regclass);
 K   ALTER TABLE public.organisation ALTER COLUMN id_organisation DROP DEFAULT;
       public          postgres    false    221    222    222            �           2604    24835    piece id_piece    DEFAULT     p   ALTER TABLE ONLY public.piece ALTER COLUMN id_piece SET DEFAULT nextval('public.piece_id_piece_seq'::regclass);
 =   ALTER TABLE public.piece ALTER COLUMN id_piece DROP DEFAULT;
       public          postgres    false    231    232    232            �           2604    24819    rapport id_rapport    DEFAULT     x   ALTER TABLE ONLY public.rapport ALTER COLUMN id_rapport SET DEFAULT nextval('public.rapport_id_rapport_seq'::regclass);
 A   ALTER TABLE public.rapport ALTER COLUMN id_rapport DROP DEFAULT;
       public          postgres    false    227    228    228            �           2604    24828    satisfaction id_satisfation    DEFAULT     �   ALTER TABLE ONLY public.satisfaction ALTER COLUMN id_satisfation SET DEFAULT nextval('public.satisfaction_id_satisfation_seq'::regclass);
 J   ALTER TABLE public.satisfaction ALTER COLUMN id_satisfation DROP DEFAULT;
       public          postgres    false    230    229    230            �           2604    24762    super_hero id_hero    DEFAULT     x   ALTER TABLE ONLY public.super_hero ALTER COLUMN id_hero SET DEFAULT nextval('public.super_hero_id_hero_seq'::regclass);
 A   ALTER TABLE public.super_hero ALTER COLUMN id_hero DROP DEFAULT;
       public          postgres    false    216    215            �           2604    24774    super_vilain id_vilain    DEFAULT     �   ALTER TABLE ONLY public.super_vilain ALTER COLUMN id_vilain SET DEFAULT nextval('public.super_vilain_id_vilain_seq'::regclass);
 E   ALTER TABLE public.super_vilain ALTER COLUMN id_vilain DROP DEFAULT;
       public          postgres    false    217    218    218            T          0    24860    adresse 
   TABLE DATA                 public          postgres    false    238   @h       B          0    24780    civil 
   TABLE DATA                 public          postgres    false    220   �h       R          0    24850    crise 
   TABLE DATA                 public          postgres    false    236   wi       F          0    24798    incident 
   TABLE DATA                 public          postgres    false    224   �i       P          0    24841    litige 
   TABLE DATA                 public          postgres    false    234   �i       H          0    24807    mission 
   TABLE DATA                 public          postgres    false    226   �i       D          0    24789    organisation 
   TABLE DATA                 public          postgres    false    222   �i       N          0    24832    piece 
   TABLE DATA                 public          postgres    false    232   �j       J          0    24816    rapport 
   TABLE DATA                 public          postgres    false    228   �j       L          0    24825    satisfaction 
   TABLE DATA                 public          postgres    false    230   �j       =          0    24756 
   super_hero 
   TABLE DATA                 public          postgres    false    215   �j       @          0    24771    super_vilain 
   TABLE DATA                 public          postgres    false    218   yk       h           0    0    adresse_ip_adresse_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.adresse_ip_adresse_seq', 3, true);
          public          postgres    false    237            i           0    0    civil_id_civil_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.civil_id_civil_seq', 1, true);
          public          postgres    false    219            j           0    0    crise_id_crise_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.crise_id_crise_seq', 1, false);
          public          postgres    false    235            k           0    0    incident_id_incident_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.incident_id_incident_seq', 1, false);
          public          postgres    false    223            l           0    0    litige_id_litige_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.litige_id_litige_seq', 1, false);
          public          postgres    false    233            m           0    0    mission_id_mission_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.mission_id_mission_seq', 1, false);
          public          postgres    false    225            n           0    0     organisation_id_organisation_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.organisation_id_organisation_seq', 1, true);
          public          postgres    false    221            o           0    0    piece_id_piece_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.piece_id_piece_seq', 1, false);
          public          postgres    false    231            p           0    0    rapport_id_rapport_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.rapport_id_rapport_seq', 1, false);
          public          postgres    false    227            q           0    0    satisfaction_id_satisfation_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.satisfaction_id_satisfation_seq', 1, false);
          public          postgres    false    229            r           0    0    super_hero_id_hero_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.super_hero_id_hero_seq', 9, true);
          public          postgres    false    216            s           0    0    super_vilain_id_vilain_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.super_vilain_id_vilain_seq', 1, false);
          public          postgres    false    217            �           2606    24867    adresse adresse_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.adresse
    ADD CONSTRAINT adresse_pkey PRIMARY KEY (id_adresse);
 >   ALTER TABLE ONLY public.adresse DROP CONSTRAINT adresse_pkey;
       public            postgres    false    238            �           2606    24787    civil civil_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.civil
    ADD CONSTRAINT civil_pkey PRIMARY KEY (id_civil);
 :   ALTER TABLE ONLY public.civil DROP CONSTRAINT civil_pkey;
       public            postgres    false    220            �           2606    24857    crise crise_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.crise
    ADD CONSTRAINT crise_pkey PRIMARY KEY (id_crise);
 :   ALTER TABLE ONLY public.crise DROP CONSTRAINT crise_pkey;
       public            postgres    false    236            �           2606    24805    incident incident_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.incident
    ADD CONSTRAINT incident_pkey PRIMARY KEY (id_incident);
 @   ALTER TABLE ONLY public.incident DROP CONSTRAINT incident_pkey;
       public            postgres    false    224            �           2606    24848    litige litige_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.litige
    ADD CONSTRAINT litige_pkey PRIMARY KEY (id_litige);
 <   ALTER TABLE ONLY public.litige DROP CONSTRAINT litige_pkey;
       public            postgres    false    234            �           2606    24814    mission mission_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.mission
    ADD CONSTRAINT mission_pkey PRIMARY KEY (id_mission);
 >   ALTER TABLE ONLY public.mission DROP CONSTRAINT mission_pkey;
       public            postgres    false    226            �           2606    24794    organisation organisation_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.organisation
    ADD CONSTRAINT organisation_pkey PRIMARY KEY (id_organisation);
 H   ALTER TABLE ONLY public.organisation DROP CONSTRAINT organisation_pkey;
       public            postgres    false    222            �           2606    24839    piece piece_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.piece
    ADD CONSTRAINT piece_pkey PRIMARY KEY (id_piece);
 :   ALTER TABLE ONLY public.piece DROP CONSTRAINT piece_pkey;
       public            postgres    false    232            �           2606    24823    rapport rapport_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.rapport
    ADD CONSTRAINT rapport_pkey PRIMARY KEY (id_rapport);
 >   ALTER TABLE ONLY public.rapport DROP CONSTRAINT rapport_pkey;
       public            postgres    false    228            �           2606    24830    satisfaction satisfaction_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.satisfaction
    ADD CONSTRAINT satisfaction_pkey PRIMARY KEY (id_satisfation);
 H   ALTER TABLE ONLY public.satisfaction DROP CONSTRAINT satisfaction_pkey;
       public            postgres    false    230            �           2606    24767    super_hero super_hero_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.super_hero
    ADD CONSTRAINT super_hero_pkey PRIMARY KEY (id_hero);
 D   ALTER TABLE ONLY public.super_hero DROP CONSTRAINT super_hero_pkey;
       public            postgres    false    215            �           2606    24776    super_vilain super_vilain_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.super_vilain
    ADD CONSTRAINT super_vilain_pkey PRIMARY KEY (id_vilain);
 H   ALTER TABLE ONLY public.super_vilain DROP CONSTRAINT super_vilain_pkey;
       public            postgres    false    218            �           2606    24873    civil fk_civil_adresse_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.civil
    ADD CONSTRAINT fk_civil_adresse_id FOREIGN KEY (id_adresse) REFERENCES public.adresse(id_adresse);
 C   ALTER TABLE ONLY public.civil DROP CONSTRAINT fk_civil_adresse_id;
       public          postgres    false    238    220    4778            �           2606    24878 '   organisation fk_organisation_adresse_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.organisation
    ADD CONSTRAINT fk_organisation_adresse_id FOREIGN KEY (id_adresse) REFERENCES public.adresse(id_adresse);
 Q   ALTER TABLE ONLY public.organisation DROP CONSTRAINT fk_organisation_adresse_id;
       public          postgres    false    4778    238    222            �           2606    24868     super_hero fk_super_hero_adresse    FK CONSTRAINT     �   ALTER TABLE ONLY public.super_hero
    ADD CONSTRAINT fk_super_hero_adresse FOREIGN KEY (id_adresse) REFERENCES public.adresse(id_adresse);
 J   ALTER TABLE ONLY public.super_hero DROP CONSTRAINT fk_super_hero_adresse;
       public          postgres    false    238    4778    215            T   �   x��α
�0��=Oq[D�88��
6v����V���M\�.�?w�q����Q�+<���f�Z�ӄP��{Q�������"��h��2�R���!űW�.D�v7	��nӫ���R�Q�T���g��Ϻ��܎o�V��2!/��L�      B      x���v
Q���W((M��L�K�,��Qs�	uV�0�QP�,K-*Q2<J���t~nn*�ad``�kh�kl����� �܊�/O�,)pv��.��IF&�F���<C ��`�i��� �?%�      R   
   x���          F   
   x���          P   
   x���          H   
   x���          D   �   x�e�M�0D���ۡI1m�
��`�h�]��Mj�-�sp1�;���L&��鮀,/�P���H�;S²Fh�dsH�0 �T5��FX����5��J0)l�q�2eA2pP�F4}Bݴy��W�?]�i`���F;��+��'�G��%�%3Z::�	�x<������7��?�      N   
   x���          J   
   x���          L   
   x���          =   ~   x���v
Q���W((M��L�+.-H-��H-�Ws�	uVа�QPON,�M�S��sKSs@��ļ���T���b��Ēb��kb)�2�3sSr@r�E��ũ`iC#cS3sK �PӚ�� ��&~      @   
   x���         