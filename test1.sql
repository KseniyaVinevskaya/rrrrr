PGDMP  	                     }            demo    17.2    17.2 6    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    34756    demo    DATABASE     x   CREATE DATABASE demo WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE demo;
                     postgres    false                        2615    34757    demo    SCHEMA        CREATE SCHEMA demo;
    DROP SCHEMA demo;
                     postgres    false            �            1259    34832 	   Customers    TABLE     �   CREATE TABLE demo."Customers" (
    "CustomerID" integer NOT NULL,
    "Name" character varying(100)[],
    "ContactInfo" character varying(255)[]
);
    DROP TABLE demo."Customers";
       demo         heap r       postgres    false    6            �            1259    34819    material_type    TABLE     �   CREATE TABLE demo.material_type (
    materialtype_id integer NOT NULL,
    materialtype_name character varying(50) NOT NULL,
    scrap_rate numeric NOT NULL
);
    DROP TABLE demo.material_type;
       demo         heap r       postgres    false    6            �            1259    34824 !   material_type_materialtype_id_seq    SEQUENCE     �   CREATE SEQUENCE demo.material_type_materialtype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE demo.material_type_materialtype_id_seq;
       demo               postgres    false    6    228            �           0    0 !   material_type_materialtype_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE demo.material_type_materialtype_id_seq OWNED BY demo.material_type.materialtype_id;
          demo               postgres    false    229            �            1259    34758    operation_history    TABLE     �   CREATE TABLE demo.operation_history (
    operation_id integer NOT NULL,
    operation_product integer NOT NULL,
    operation_partner integer NOT NULL,
    product_count integer NOT NULL,
    operation_date timestamp without time zone NOT NULL
);
 #   DROP TABLE demo.operation_history;
       demo         heap r       postgres    false    6            �            1259    34761 "   operation_history_operation_id_seq    SEQUENCE     �   CREATE SEQUENCE demo.operation_history_operation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE demo.operation_history_operation_id_seq;
       demo               postgres    false    6    218            �           0    0 "   operation_history_operation_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE demo.operation_history_operation_id_seq OWNED BY demo.operation_history.operation_id;
          demo               postgres    false    219            �            1259    34762    partner_type    TABLE     v   CREATE TABLE demo.partner_type (
    partnertype_id integer NOT NULL,
    type_name character varying(50) NOT NULL
);
    DROP TABLE demo.partner_type;
       demo         heap r       postgres    false    6            �            1259    34765    partner_type_partnertype_id_seq    SEQUENCE     �   CREATE SEQUENCE demo.partner_type_partnertype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE demo.partner_type_partnertype_id_seq;
       demo               postgres    false    220    6            �           0    0    partner_type_partnertype_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE demo.partner_type_partnertype_id_seq OWNED BY demo.partner_type.partnertype_id;
          demo               postgres    false    221            �            1259    34766    partners    TABLE     �  CREATE TABLE demo.partners (
    partner_id integer NOT NULL,
    partner_name character varying(250) NOT NULL,
    partner_type integer NOT NULL,
    partner_director character varying(100) NOT NULL,
    partner_email character varying(50) NOT NULL,
    partner_phone character varying(50) NOT NULL,
    partner_address character varying(250) NOT NULL,
    partner_inn character varying(50) NOT NULL,
    partner_rating numeric NOT NULL
);
    DROP TABLE demo.partners;
       demo         heap r       postgres    false    6            �            1259    34771    partners_partner_id_seq    SEQUENCE     �   CREATE SEQUENCE demo.partners_partner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE demo.partners_partner_id_seq;
       demo               postgres    false    222    6            �           0    0    partners_partner_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE demo.partners_partner_id_seq OWNED BY demo.partners.partner_id;
          demo               postgres    false    223            �            1259    34772    product_type    TABLE     �   CREATE TABLE demo.product_type (
    producttype_id integer NOT NULL,
    type_name character varying(50) NOT NULL,
    type_coefficient numeric NOT NULL
);
    DROP TABLE demo.product_type;
       demo         heap r       postgres    false    6            �            1259    34777    product_type_type_id_seq    SEQUENCE     �   CREATE SEQUENCE demo.product_type_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE demo.product_type_type_id_seq;
       demo               postgres    false    6    224            �           0    0    product_type_type_id_seq    SEQUENCE OWNED BY     X   ALTER SEQUENCE demo.product_type_type_id_seq OWNED BY demo.product_type.producttype_id;
          demo               postgres    false    225            �            1259    34778    products    TABLE     n  CREATE TABLE demo.products (
    product_id integer NOT NULL,
    product_name character varying(250) NOT NULL,
    product_type integer NOT NULL,
    minimal_price numeric NOT NULL,
    material_type integer,
    "Code" character varying(255)[],
    "Brand" character varying(100)[],
    "Category" character varying(100)[],
    "Image" character varying(255)[]
);
    DROP TABLE demo.products;
       demo         heap r       postgres    false    6            �            1259    34783    products_product_id_seq    SEQUENCE     �   CREATE SEQUENCE demo.products_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE demo.products_product_id_seq;
       demo               postgres    false    226    6                        0    0    products_product_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE demo.products_product_id_seq OWNED BY demo.products.product_id;
          demo               postgres    false    227            ?           2604    34784    operation_history operation_id    DEFAULT     �   ALTER TABLE ONLY demo.operation_history ALTER COLUMN operation_id SET DEFAULT nextval('demo.operation_history_operation_id_seq'::regclass);
 K   ALTER TABLE demo.operation_history ALTER COLUMN operation_id DROP DEFAULT;
       demo               postgres    false    219    218            @           2604    34785    partner_type partnertype_id    DEFAULT     �   ALTER TABLE ONLY demo.partner_type ALTER COLUMN partnertype_id SET DEFAULT nextval('demo.partner_type_partnertype_id_seq'::regclass);
 H   ALTER TABLE demo.partner_type ALTER COLUMN partnertype_id DROP DEFAULT;
       demo               postgres    false    221    220            A           2604    34786    partners partner_id    DEFAULT     v   ALTER TABLE ONLY demo.partners ALTER COLUMN partner_id SET DEFAULT nextval('demo.partners_partner_id_seq'::regclass);
 @   ALTER TABLE demo.partners ALTER COLUMN partner_id DROP DEFAULT;
       demo               postgres    false    223    222            B           2604    34787    product_type producttype_id    DEFAULT        ALTER TABLE ONLY demo.product_type ALTER COLUMN producttype_id SET DEFAULT nextval('demo.product_type_type_id_seq'::regclass);
 H   ALTER TABLE demo.product_type ALTER COLUMN producttype_id DROP DEFAULT;
       demo               postgres    false    225    224            C           2604    34788    products product_id    DEFAULT     v   ALTER TABLE ONLY demo.products ALTER COLUMN product_id SET DEFAULT nextval('demo.products_product_id_seq'::regclass);
 @   ALTER TABLE demo.products ALTER COLUMN product_id DROP DEFAULT;
       demo               postgres    false    227    226            �          0    34832 	   Customers 
   TABLE DATA           H   COPY demo."Customers" ("CustomerID", "Name", "ContactInfo") FROM stdin;
    demo               postgres    false    230   �B       �          0    34819    material_type 
   TABLE DATA           U   COPY demo.material_type (materialtype_id, materialtype_name, scrap_rate) FROM stdin;
    demo               postgres    false    228   �B       �          0    34758    operation_history 
   TABLE DATA           |   COPY demo.operation_history (operation_id, operation_product, operation_partner, product_count, operation_date) FROM stdin;
    demo               postgres    false    218   C       �          0    34762    partner_type 
   TABLE DATA           ?   COPY demo.partner_type (partnertype_id, type_name) FROM stdin;
    demo               postgres    false    220   �C       �          0    34766    partners 
   TABLE DATA           �   COPY demo.partners (partner_id, partner_name, partner_type, partner_director, partner_email, partner_phone, partner_address, partner_inn, partner_rating) FROM stdin;
    demo               postgres    false    222   #D       �          0    34772    product_type 
   TABLE DATA           Q   COPY demo.product_type (producttype_id, type_name, type_coefficient) FROM stdin;
    demo               postgres    false    224   �F       �          0    34778    products 
   TABLE DATA           �   COPY demo.products (product_id, product_name, product_type, minimal_price, material_type, "Code", "Brand", "Category", "Image") FROM stdin;
    demo               postgres    false    226   }G                  0    0 !   material_type_materialtype_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('demo.material_type_materialtype_id_seq', 1, false);
          demo               postgres    false    229                       0    0 "   operation_history_operation_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('demo.operation_history_operation_id_seq', 16, true);
          demo               postgres    false    219                       0    0    partner_type_partnertype_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('demo.partner_type_partnertype_id_seq', 4, true);
          demo               postgres    false    221                       0    0    partners_partner_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('demo.partners_partner_id_seq', 7, true);
          demo               postgres    false    223                       0    0    product_type_type_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('demo.product_type_type_id_seq', 4, true);
          demo               postgres    false    225                       0    0    products_product_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('demo.products_product_id_seq', 1, false);
          demo               postgres    false    227            Q           2606    34838    Customers Customers_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY demo."Customers"
    ADD CONSTRAINT "Customers_pkey" PRIMARY KEY ("CustomerID");
 D   ALTER TABLE ONLY demo."Customers" DROP CONSTRAINT "Customers_pkey";
       demo                 postgres    false    230            O           2606    34826     material_type material_type_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY demo.material_type
    ADD CONSTRAINT material_type_pkey PRIMARY KEY (materialtype_id);
 H   ALTER TABLE ONLY demo.material_type DROP CONSTRAINT material_type_pkey;
       demo                 postgres    false    228            E           2606    34790 &   operation_history operation_history_pk 
   CONSTRAINT     l   ALTER TABLE ONLY demo.operation_history
    ADD CONSTRAINT operation_history_pk PRIMARY KEY (operation_id);
 N   ALTER TABLE ONLY demo.operation_history DROP CONSTRAINT operation_history_pk;
       demo                 postgres    false    218            G           2606    34792    partner_type partner_type_pk 
   CONSTRAINT     d   ALTER TABLE ONLY demo.partner_type
    ADD CONSTRAINT partner_type_pk PRIMARY KEY (partnertype_id);
 D   ALTER TABLE ONLY demo.partner_type DROP CONSTRAINT partner_type_pk;
       demo                 postgres    false    220            I           2606    34794    partners partners_pk 
   CONSTRAINT     X   ALTER TABLE ONLY demo.partners
    ADD CONSTRAINT partners_pk PRIMARY KEY (partner_id);
 <   ALTER TABLE ONLY demo.partners DROP CONSTRAINT partners_pk;
       demo                 postgres    false    222            K           2606    34796    product_type product_type_pk 
   CONSTRAINT     d   ALTER TABLE ONLY demo.product_type
    ADD CONSTRAINT product_type_pk PRIMARY KEY (producttype_id);
 D   ALTER TABLE ONLY demo.product_type DROP CONSTRAINT product_type_pk;
       demo                 postgres    false    224            M           2606    34798    products products_pk 
   CONSTRAINT     X   ALTER TABLE ONLY demo.products
    ADD CONSTRAINT products_pk PRIMARY KEY (product_id);
 <   ALTER TABLE ONLY demo.products DROP CONSTRAINT products_pk;
       demo                 postgres    false    226            R           2606    34799 /   operation_history operation_history_partners_fk    FK CONSTRAINT     �   ALTER TABLE ONLY demo.operation_history
    ADD CONSTRAINT operation_history_partners_fk FOREIGN KEY (operation_partner) REFERENCES demo.partners(partner_id);
 W   ALTER TABLE ONLY demo.operation_history DROP CONSTRAINT operation_history_partners_fk;
       demo               postgres    false    218    4681    222            S           2606    34804 /   operation_history operation_history_products_fk    FK CONSTRAINT     �   ALTER TABLE ONLY demo.operation_history
    ADD CONSTRAINT operation_history_products_fk FOREIGN KEY (operation_product) REFERENCES demo.products(product_id);
 W   ALTER TABLE ONLY demo.operation_history DROP CONSTRAINT operation_history_products_fk;
       demo               postgres    false    226    218    4685            T           2606    34809 !   partners partners_partner_type_fk    FK CONSTRAINT     �   ALTER TABLE ONLY demo.partners
    ADD CONSTRAINT partners_partner_type_fk FOREIGN KEY (partner_type) REFERENCES demo.partner_type(partnertype_id);
 I   ALTER TABLE ONLY demo.partners DROP CONSTRAINT partners_partner_type_fk;
       demo               postgres    false    220    4679    222            U           2606    34827 "   products products_material_type_fk    FK CONSTRAINT     �   ALTER TABLE ONLY demo.products
    ADD CONSTRAINT products_material_type_fk FOREIGN KEY (material_type) REFERENCES demo.material_type(materialtype_id);
 J   ALTER TABLE ONLY demo.products DROP CONSTRAINT products_material_type_fk;
       demo               postgres    false    4687    226    228            V           2606    34814 !   products products_product_type_fk    FK CONSTRAINT     �   ALTER TABLE ONLY demo.products
    ADD CONSTRAINT products_product_type_fk FOREIGN KEY (product_type) REFERENCES demo.product_type(producttype_id);
 I   ALTER TABLE ONLY demo.products DROP CONSTRAINT products_product_type_fk;
       demo               postgres    false    4683    226    224            �      x������ � �      �   N   x�3估�bÅ}6^�$7]쾰S���6r�sqB���\�P��m�y��bㅭ�^��4�2�J�1z\\\ )�      �   �   x�u�ˍ�@D�8�M�ДO,���\V���SQ�Z)6bHI2�Ų�֏���F{C,�l�C��FS�v2�#�����,'�n�)q!�(�ޔ�YbM� j�T����:�Ϊ���so��\|�͢EA9��)��tU�lIhH�,8��20���n�����}3=��V��ޤ^�b��Ut��TYg7���Ug�K�򁗏�?'�>���0�kN      �   (   x�3�0��8/�A.c���"& #F��� ���      �   �  x��T�n�@}^�~ B^�.6o|H��m��@�ρ��C"�"U�zK��C ���_����Y��T�!ٻ�s�9;J�9�
I�n�hAS7�	�݉P�>��Xq�ͱw�~q�x,�c�i+����7ݴ���N�6�Z��;a�Z�HKce-5�6�H���?i�G�|O�;���X�(�a���!cI��rKEE�C�W%}��C�ӊTVDx��*��8�]b� y'n(���+�ۑ�F�)Ц4��=hq$�������ܳ�'�gak2N��2�3w��{n��m�����1���[3{��g`��'IH�Z��f8�ٸ��,ν�'�\�m�T���G����{�V'��F��|�|u$�P�$�+�͑i�|�ȹ�K�L�m,���C�f��H	cL��-8AW�'(4�44{U�+p�¹Yrek~�5�&\k��B��e;6�M�Y��N�y��y�m,k�GRùJ(��5&�H�e�[�F��e ~�Z`��㊴H�Ml,l`�0Y�{�[����N��x�dy���ߍɺ��~�ϗ��|�FGa&���a}��s�������A�cvӷ�&�5�+T��hu5�HXk#��2�R�J�_����܌o����ɚ���^�lU_w�0i�ҤQQl����1~��Y#t���K�ųaC>���g����!3�y��W�<xjV���s��)i\��yQ��7�Hg�      �   u   x�e���0�wUP�I�v7|�H �a	��ia�#V��:������|Q|��b�^�2M>�o���aG#8Q$[�/#I��.%�I%*o��_�Ï�����,�`�zo�Q�      �   4  x�u�MN�0���)|���ؗ�=LR,�Ć6�IQ4M�fnĳATI,g~�7o\���F�7t�-�8_�EI#u��7��PO�x抔���[^�FO%��J+i�AXᬫJ������+�k�=�3�<^K��K�Jn)&e��Q�Yy�W)�'�C��P�V	���}�B;�I1:����5��JO^�Pu�1�,(�v�x�5��Ac�^"�A�<e'�%���7��1�``�7���˧^5��k�y*,s����>��-I�����>#�z���)�
�y*;9����6�*Cn1Ǫ,��#Z6�     