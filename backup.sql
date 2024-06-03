PGDMP     8        
            |            qph    14.11    14.11 =    5           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            6           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            7           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            8           1262    16793    qph    DATABASE     _   CREATE DATABASE qph WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE qph;
                postgres    false            �            1259    16794 	   catalogos    TABLE     �   CREATE TABLE public.catalogos (
    catalogoid integer NOT NULL,
    tipo integer NOT NULL,
    nombre character varying(100),
    estado integer NOT NULL,
    documentoid character varying(13)
);
    DROP TABLE public.catalogos;
       public         heap    postgres    false            �            1259    16797    catalogos_catalogoid_seq    SEQUENCE     �   CREATE SEQUENCE public.catalogos_catalogoid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.catalogos_catalogoid_seq;
       public          postgres    false    209            9           0    0    catalogos_catalogoid_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.catalogos_catalogoid_seq OWNED BY public.catalogos.catalogoid;
          public          postgres    false    210            �            1259    16798    compras    TABLE       CREATE TABLE public.compras (
    compraid integer NOT NULL,
    productoid character varying(10) NOT NULL,
    proveedor character varying(100) NOT NULL,
    cantidad numeric(50,0) NOT NULL,
    fecharegistro date,
    preciounitario numeric(50,2),
    preciototal numeric(50,2)
);
    DROP TABLE public.compras;
       public         heap    postgres    false            �            1259    16801    compras_compraid_seq    SEQUENCE     �   CREATE SEQUENCE public.compras_compraid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.compras_compraid_seq;
       public          postgres    false    211            :           0    0    compras_compraid_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.compras_compraid_seq OWNED BY public.compras.compraid;
          public          postgres    false    212            �            1259    16839    factcab    TABLE     �   CREATE TABLE public.factcab (
    id integer NOT NULL,
    clienteid bigint NOT NULL,
    fecharegistro date NOT NULL,
    totalfactura double precision NOT NULL
);
    DROP TABLE public.factcab;
       public         heap    postgres    false            �            1259    16838    factcab_id_seq    SEQUENCE     �   CREATE SEQUENCE public.factcab_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.factcab_id_seq;
       public          postgres    false    222            ;           0    0    factcab_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.factcab_id_seq OWNED BY public.factcab.id;
          public          postgres    false    221            �            1259    16846    factdet    TABLE     -  CREATE TABLE public.factdet (
    id integer NOT NULL,
    factcabid bigint NOT NULL,
    productoid bigint NOT NULL,
    cantidad integer NOT NULL,
    precio double precision NOT NULL,
    subtotal double precision NOT NULL,
    iva double precision NOT NULL,
    total double precision NOT NULL
);
    DROP TABLE public.factdet;
       public         heap    postgres    false            �            1259    16845    factdet_id_seq    SEQUENCE     �   CREATE SEQUENCE public.factdet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.factdet_id_seq;
       public          postgres    false    224            <           0    0    factdet_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.factdet_id_seq OWNED BY public.factdet.id;
          public          postgres    false    223            �            1259    16802 	   productos    TABLE     �   CREATE TABLE public.productos (
    productoid integer NOT NULL,
    codigo character varying(10) NOT NULL,
    nombre character varying(100) NOT NULL,
    preciounidad numeric(10,2) NOT NULL
);
    DROP TABLE public.productos;
       public         heap    postgres    false            �            1259    16805    productos_productoid_seq    SEQUENCE     �   CREATE SEQUENCE public.productos_productoid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.productos_productoid_seq;
       public          postgres    false    213            =           0    0    productos_productoid_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.productos_productoid_seq OWNED BY public.productos.productoid;
          public          postgres    false    214            �            1259    16806    stock    TABLE     �   CREATE TABLE public.stock (
    stockid integer NOT NULL,
    productoid numeric(50,0) NOT NULL,
    entradas numeric(50,0),
    salidas numeric(50,0),
    disponible numeric(50,0)
);
    DROP TABLE public.stock;
       public         heap    postgres    false            �            1259    16809    stock_stockid_seq    SEQUENCE     �   CREATE SEQUENCE public.stock_stockid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.stock_stockid_seq;
       public          postgres    false    215            >           0    0    stock_stockid_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.stock_stockid_seq OWNED BY public.stock.stockid;
          public          postgres    false    216            �            1259    16810    usuarios    TABLE       CREATE TABLE public.usuarios (
    usuarioid integer NOT NULL,
    nombre character varying(100) NOT NULL,
    correo character varying(100),
    usuario character varying(100) NOT NULL,
    password character varying(300) NOT NULL,
    tipo integer NOT NULL
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false            �            1259    16815    usuarios_usuarioid_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_usuarioid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.usuarios_usuarioid_seq;
       public          postgres    false    217            ?           0    0    usuarios_usuarioid_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.usuarios_usuarioid_seq OWNED BY public.usuarios.usuarioid;
          public          postgres    false    218            �            1259    16816    ventas    TABLE       CREATE TABLE public.ventas (
    ventaid integer NOT NULL,
    productoid character varying(10) NOT NULL,
    cliente character varying(100) NOT NULL,
    cantidad numeric(50,0) NOT NULL,
    fecharegistro date,
    preciounitario numeric(50,2),
    preciototal numeric(50,2)
);
    DROP TABLE public.ventas;
       public         heap    postgres    false            �            1259    16819    ventas_ventaid_seq    SEQUENCE     �   CREATE SEQUENCE public.ventas_ventaid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.ventas_ventaid_seq;
       public          postgres    false    219            @           0    0    ventas_ventaid_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.ventas_ventaid_seq OWNED BY public.ventas.ventaid;
          public          postgres    false    220                       2604    16820    catalogos catalogoid    DEFAULT     |   ALTER TABLE ONLY public.catalogos ALTER COLUMN catalogoid SET DEFAULT nextval('public.catalogos_catalogoid_seq'::regclass);
 C   ALTER TABLE public.catalogos ALTER COLUMN catalogoid DROP DEFAULT;
       public          postgres    false    210    209            �           2604    16821    compras compraid    DEFAULT     t   ALTER TABLE ONLY public.compras ALTER COLUMN compraid SET DEFAULT nextval('public.compras_compraid_seq'::regclass);
 ?   ALTER TABLE public.compras ALTER COLUMN compraid DROP DEFAULT;
       public          postgres    false    212    211            �           2604    16842 
   factcab id    DEFAULT     h   ALTER TABLE ONLY public.factcab ALTER COLUMN id SET DEFAULT nextval('public.factcab_id_seq'::regclass);
 9   ALTER TABLE public.factcab ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            �           2604    16849 
   factdet id    DEFAULT     h   ALTER TABLE ONLY public.factdet ALTER COLUMN id SET DEFAULT nextval('public.factdet_id_seq'::regclass);
 9   ALTER TABLE public.factdet ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            �           2604    16822    productos productoid    DEFAULT     |   ALTER TABLE ONLY public.productos ALTER COLUMN productoid SET DEFAULT nextval('public.productos_productoid_seq'::regclass);
 C   ALTER TABLE public.productos ALTER COLUMN productoid DROP DEFAULT;
       public          postgres    false    214    213            �           2604    16823    stock stockid    DEFAULT     n   ALTER TABLE ONLY public.stock ALTER COLUMN stockid SET DEFAULT nextval('public.stock_stockid_seq'::regclass);
 <   ALTER TABLE public.stock ALTER COLUMN stockid DROP DEFAULT;
       public          postgres    false    216    215            �           2604    16824    usuarios usuarioid    DEFAULT     x   ALTER TABLE ONLY public.usuarios ALTER COLUMN usuarioid SET DEFAULT nextval('public.usuarios_usuarioid_seq'::regclass);
 A   ALTER TABLE public.usuarios ALTER COLUMN usuarioid DROP DEFAULT;
       public          postgres    false    218    217            �           2604    16825    ventas ventaid    DEFAULT     p   ALTER TABLE ONLY public.ventas ALTER COLUMN ventaid SET DEFAULT nextval('public.ventas_ventaid_seq'::regclass);
 =   ALTER TABLE public.ventas ALTER COLUMN ventaid DROP DEFAULT;
       public          postgres    false    220    219            #          0    16794 	   catalogos 
   TABLE DATA                 public          postgres    false    209   �A       %          0    16798    compras 
   TABLE DATA                 public          postgres    false    211   kB       0          0    16839    factcab 
   TABLE DATA                 public          postgres    false    222   CC       2          0    16846    factdet 
   TABLE DATA                 public          postgres    false    224   �D       '          0    16802 	   productos 
   TABLE DATA                 public          postgres    false    213   mG       )          0    16806    stock 
   TABLE DATA                 public          postgres    false    215   �H       +          0    16810    usuarios 
   TABLE DATA                 public          postgres    false    217   ?I       -          0    16816    ventas 
   TABLE DATA                 public          postgres    false    219   J       A           0    0    catalogos_catalogoid_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.catalogos_catalogoid_seq', 12, true);
          public          postgres    false    210            B           0    0    compras_compraid_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.compras_compraid_seq', 9, true);
          public          postgres    false    212            C           0    0    factcab_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.factcab_id_seq', 54, true);
          public          postgres    false    221            D           0    0    factdet_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.factdet_id_seq', 62, true);
          public          postgres    false    223            E           0    0    productos_productoid_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.productos_productoid_seq', 13, true);
          public          postgres    false    214            F           0    0    stock_stockid_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.stock_stockid_seq', 18, true);
          public          postgres    false    216            G           0    0    usuarios_usuarioid_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.usuarios_usuarioid_seq', 7, true);
          public          postgres    false    218            H           0    0    ventas_ventaid_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.ventas_ventaid_seq', 3, true);
          public          postgres    false    220            �           2606    16827    catalogos catalogoid_pk 
   CONSTRAINT     ]   ALTER TABLE ONLY public.catalogos
    ADD CONSTRAINT catalogoid_pk PRIMARY KEY (catalogoid);
 A   ALTER TABLE ONLY public.catalogos DROP CONSTRAINT catalogoid_pk;
       public            postgres    false    209            �           2606    16829    compras compraid_pk 
   CONSTRAINT     W   ALTER TABLE ONLY public.compras
    ADD CONSTRAINT compraid_pk PRIMARY KEY (compraid);
 =   ALTER TABLE ONLY public.compras DROP CONSTRAINT compraid_pk;
       public            postgres    false    211            �           2606    16844    factcab factcab_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.factcab
    ADD CONSTRAINT factcab_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.factcab DROP CONSTRAINT factcab_pkey;
       public            postgres    false    222            �           2606    16851    factdet factdet_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.factdet
    ADD CONSTRAINT factdet_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.factdet DROP CONSTRAINT factdet_pkey;
       public            postgres    false    224            �           2606    16831    productos producto_pk 
   CONSTRAINT     [   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT producto_pk PRIMARY KEY (productoid);
 ?   ALTER TABLE ONLY public.productos DROP CONSTRAINT producto_pk;
       public            postgres    false    213            �           2606    16833    stock stockid_pk 
   CONSTRAINT     S   ALTER TABLE ONLY public.stock
    ADD CONSTRAINT stockid_pk PRIMARY KEY (stockid);
 :   ALTER TABLE ONLY public.stock DROP CONSTRAINT stockid_pk;
       public            postgres    false    215            �           2606    16835    usuarios usuarioid_pk 
   CONSTRAINT     Z   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarioid_pk PRIMARY KEY (usuarioid);
 ?   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarioid_pk;
       public            postgres    false    217            �           2606    16837    ventas ventaid_pk 
   CONSTRAINT     T   ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT ventaid_pk PRIMARY KEY (ventaid);
 ;   ALTER TABLE ONLY public.ventas DROP CONSTRAINT ventaid_pk;
       public            postgres    false    219            �           2606    16852    factdet factdet_factcabid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.factdet
    ADD CONSTRAINT factdet_factcabid_fkey FOREIGN KEY (factcabid) REFERENCES public.factcab(id) ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.factdet DROP CONSTRAINT factdet_factcabid_fkey;
       public          postgres    false    222    3220    224            #   �   x���Ak�@��{~���B���&��'���Z�c*�`�����MH�C/�<��~S/�|��z�YA{ٝ\3i(҉`;���[x�`�}˞�g��+{)N�MU�Rb.D��$����9����0�T�zE5w��5ld�;��MUt�%J!�6Qd {��]�����?�Ҩ���3Q���i3�-?4a�.�y�l�]��s��31���K����      %   �   x���M�@�����Y�2���A'	!Һo�A�VV��7�H0/;0�3��Ez,!����˭��J7�Q���)-`%��M�V�VU��;�Ԧ���?���(\�i#=D���X�E@9*���赹B�%��t.=I�0��~L�ܟ^Rd&���G�����1t6TĢ���`8g������ن����NG��      0   �  x���=KA������pvg?+��D�$ ���	Zd_����ٹ�gg��~�tp����>�N�ogy=�?�Ǔ{�x���M\����k����a=�,��ۻ��>-�g��(���|��C�l��x��x	��v����s���k_Ծ9�WF�, ؤ�=�
j�J:	�\B���(�m�Q%����(Uh@C54�1��ѯA=��p��fBP),@�"j��hM��LT�PP�{�.Z �EK��hD�"���
���Q���@^
����x�v��������R����n?5J�CKQ�T2=^"[ ��[�<��!KfENp^B�*�*l/�QZki�����H�F2�R�'�
㼒+i ��ہ���bP�      2   ~  x���M�1���s��&v�d�'{���]���8,��v*�Q�TJ��2O��3�����O��������ח���Ǘ��o�_�����\��q�㒳��R��iM����s\$�&o��SY⩊TH^�J �S���>���8��yR5R7R�`�Ig�s�v\j�R�is�a@�4�L��A��C���!�� ��> ��r�08���Ii$:�J ���j��l6�Ùm�)<3U�%�K�Dmp��ߢ꯶�N֡��<Iٜ"nAI�b<8��_J��R���},T�m�4��%��}tkJ��Ih�g3��__���`�Y$��:\bO~���H%ő�s��*u kn~J�O�L;S�OgYB\�D}�WK&aK�!K�9ѡF�����c�
�H�] T��5�OLL^�v7�"�����X�8�쀗
;��Z�B��;���~?/���R^ L	!�<,!$�t�)ön\tO*RE�ဂP��>���M$��S7�?�/���ͧ$0�h�ˀY���u5���&;,Q��T���'~ݱY
|\�U��I4��,��e�)�V&$�l� #����� ���OTx���x�������P]W� ���u_��>��XY�"����:� ��c�      '     x���AK�0�{?Żm��$[�'�C+�;w]s�MIZ�oo���vjO�W�����lWl>�����e�������qpxʿ6��a�SR1��gl�S=��[?�)���1��P�H-u@g��BS?f�P:��[^%{�oؾ�hbB�U��`��th�NWʆ�����%�NFpu.ץUP�_?�0F�&ϛۢ�~�8狆���D�'ىd����N�x�X���Z�5�Õ�tJ�x&��u��W�W�O:މ�(��6~��4L�?��T      )   �   x���1�0E���#H6��4�bb�	�@'D�"��I��/y����0��	�0����/�y����n�ӵa��C�F�a{0�/��f�`"E�ڂHA^�te�r�j	��^09��b�n+D��#�5��X�(�֔��9j낼MDJK���*���̘�:�      +   �   x���v
Q���W((M��L�+-.M,��/Vs�	uV�0�QP�,�L�KTN�+�/V�����%���9z���H� f�k��G~n�_THHynF�[a�kj��-P�PӚ˓�M��8ge� mWpKLJ,JT��O�Y��Jˠ�U�����t�9��R�kR�R�@�f�X�CD�.. ��}r      -   �   x���M�@�ỿbn�B���0H�>��B�쪿���K]f�=<3:/�k	://0L��4ln�T��-+`#�O�2����n��Eɥ�
���0�����{�'-W:�[�F��5Z��B�D�ш��/]��i"8�������^�~-�=�	�F`     